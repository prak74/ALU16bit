import os

def twos_comp(val):
    """compute the 2's complement of int value val"""
    if(val>=0):
        return val
    else:
        return 2**16+val    #not(-val-1)


"""Input 2 numbers to generate 4 cases (add, subtract, nand, xor) for each pair"""
while(True):
    test = ""
    a = int(input())
    b = int(input())
    a_bin = twos_comp(a)
    b_bin = twos_comp(b)
    sum = a+b
    sum_bit = twos_comp(sum)
    diff = a-b
    diff_bit = twos_comp(diff)
    nand = -(a & b) - 1  # not(a and b)
    nand_bit = twos_comp(nand)
    xor = a^b
    xor_bit = twos_comp(xor)
    test += '\n' + 'A <= "{:016b}"; -- {}'.format(a_bin,a) + '\n' + 'B <= "{:016b}"; -- {}'.format(b_bin,b)
    test += '\n' + 's0 <= \'0\';' + '\n' + 's1 <= \'0\';'
    test += '\n' + 'actual_output <= "{:016b}"; -- {}'.format(sum_bit,sum)
    test += '\n' + 'wait for 5ns;' + '\n'
    test += '\n' + 'A <= "{:016b}"; -- {}'.format(a_bin, a) + '\n' + 'B <= "{:016b}"; -- {}'.format(b_bin, b)
    test += '\n' + 's0 <= \'1\';' + '\n' + 's1 <= \'0\';'
    test += '\n' + 'actual_output <= "{:016b}"; -- {}'.format(diff_bit, diff)
    test += '\n' + 'wait for 5ns;' + '\n'
    test += '\n' + 'A <= "{:016b}"; -- {}'.format(a_bin, a) + '\n' + 'B <= "{:016b}"; -- {}'.format(b_bin, b)
    test += '\n' + 's0 <= \'0\';' + '\n' + 's1 <= \'1\';'
    test += '\n' + 'actual_output <= "{:016b}"; -- {}'.format(nand_bit, nand)
    test += '\n' + 'wait for 5ns;' + '\n'
    test += '\n' + 'A <= "{:016b}"; -- {}'.format(a_bin, a) + '\n' + 'B <= "{:016b}"; -- {}'.format(b_bin, b)
    test += '\n' + 's0 <= \'1\';' + '\n' + 's1 <= \'1\';'
    test += '\n' + 'actual_output <= "{:016b}"; -- {}'.format(xor_bit, xor)
    test += '\n' + 'wait for 5ns;' + '\n'
    with open('testcase.txt','a') as f:
        f.write(test)