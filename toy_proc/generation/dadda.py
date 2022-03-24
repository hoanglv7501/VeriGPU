# generates dadda adder for specified data width
# note that this doesn't yet add the standard adder at the end

import argparse
import math
from collections import defaultdict, deque


def create_d_sequence(max_v: int):
    d_l = []
    d = 2
    d_l.append(2)
    while d < max_v:
        d = math.floor(d * 1.5)
        d_l.append(d)
    return d_l


def run(args):
    d_l = create_d_sequence(args.width)
    print('d_l', d_l)
    dots = defaultdict(list)
    lines = deque()
    lines.append('// This is a GENERATED file. Do not modify by hand.')
    lines.append('// Created by toy_proc/generation/dadda.py')
    lines.append('')
    lines.append(
        f'// Multiply two {args.width}-bit integers \'{args.a_name}\' and \'{args.b_name}\','
        f' and put result in {2 * args.width}-bit integer \'{args.out_name}\'.')
    lines.append('')
    lines.append(f'module {args.module_name}(')
    lines.append(f'    input [{args.width - 1}:0] {args.a_name},')
    lines.append(f'    input [{args.width - 1}:0] {args.b_name},')
    lines.append(f'    output [{args.width * 2 - 1}:0] {args.out_name}')
    lines.append(');')
    for line in lines:
        print(line)
    for i in range(args.width):
        for j in range(args.width):
            dots[i + j].append(f'({args.a_name}[{i}] & {args.b_name}[{j}])')
    wire_index = 0
    wires = []
    assigns = []
    while(True):
        max_height = max([len(col) for col in dots.values()])
        print('max_height', max_height)
        if max_height == 2:
            # we are done. hand-off to carry adder...
            break
        d_j = max([i for i in d_l if i < max_height])
        print('d_j', d_j)
        for i in range(args.width * 2 - 1, -1, -1):
            while len(dots[i]) > d_j:
                if len(dots[i]) == d_j + 1:
                    carry_name = f'wire_{wire_index}'
                    sum_name = f'wire_{wire_index + 1}'
                    wire_index += 2
                    wires.append(f'    wire {carry_name};')
                    wires.append(f'    wire {sum_name};')
                    line = f'    assign {{ {carry_name}, {sum_name} }} = {dots[i][-1]} + {dots[i][-2]};'
                    assigns.append(line)
                    dots[i - 1].append(carry_name)
                    dots[i] = dots[i][:-2] + [sum_name]
                else:
                    carry_name = f'wire_{wire_index}'
                    sum_name = f'wire_{wire_index + 1}'
                    wire_index += 2
                    wires.append(f'    wire {carry_name};')
                    wires.append(f'    wire {sum_name};')
                    line = f'    assign {{ {carry_name}, {sum_name} }} = {dots[i][-1]} + {dots[i][-2]} + {dots[i][-3]};'
                    assigns.append(line)
                    dots[i - 1].append(carry_name)
                    dots[i] = dots[i][:-3] + [sum_name]
                    print('dots[' + str(i) + '] after', dots[i])
                    print('dots[' + str(i - 1) + '] after', dots[i - 1])
        if max_height == 5:
            break
    for wire in wires:
        lines.append(wire)
    for assign in assigns:
        lines.append(assign)

    lines.append('endmodule')
    for line in lines:
        print(line)
    with open(args.out_path, 'w') as f:
        for line in lines:
            f.write(line + '\n')
    print('wrote to ' + args.out_path)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--width', type=int, default=24)
    parser.add_argument('--module-name', type=str, default='dadda')
    parser.add_argument('--a-name', type=str, default='a')
    parser.add_argument('--b-name', type=str, default='b')
    parser.add_argument('--out-name', type=str, default='out')
    parser.add_argument('--out-path', type=str, default='build/dadda_{width}bit.sv')
    args = parser.parse_args()
    args.out_path = args.out_path.format(**args.__dict__)
    run(args)
