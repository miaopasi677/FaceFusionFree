#!/usr/bin/env python3
print()
print()
import pyfiglet

# 生成大字 "FaceFusionVIP"
big_text = pyfiglet.figlet_format("FaceFusionFreeVIP", font="slant")
print("========================================================================")
# 打印大字
print(big_text)
print("========================================================================")
print()
print()

# 打印其他信息
print("---会员专享版🍒---")
print()
print()
print("---油管：王知风---")
print()
print("---B站：AI王知风---")
print()
print("---AI工具QQ群：957732664---")
print()


import os

os.environ['OMP_NUM_THREADS'] = '1'

from facefusion import core

if __name__ == '__main__':
	core.cli()
