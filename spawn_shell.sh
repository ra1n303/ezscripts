#!/bin/bash

# 增强型Shell生成脚本
# 提供多种方式来生成交互式Shell，特别是在受限环境中

echo -e "\n\033[1;34m转换终端：\033[0m\n"

# 方法1：Python PTY
echo -e "\033[1;32m1. Python PTY (适用于有Python的环境):\033[0m"
echo -e "python -c \"import pty; pty.spawn('/bin/bash')\"\n"
echo -e "   # 先执行上面的命令，然后按Ctrl+Z"
echo -e "   # 接着输入：stty raw -echo; fg\n"

# 方法2：script命令
echo -e "\033[1;32m2. Script命令 (适用于大多数Linux系统):\033[0m"
echo -e "/usr/bin/script -qc /bin/bash /dev/null\n"

# 方法3：Perl
echo -e "\033[1;32m3. Perl方式 (适用于有Perl的环境):\033[0m"
echo -e "perl -e 'exec \"/bin/bash\";'\n"

# 方法4：直接Bash
echo -e "\033[1;32m4. 直接Bash交互模式 (最简单的方法):\033[0m"
echo -e "/bin/bash -i\n"

# 方法5：Ruby
echo -e "\033[1;32m5. Ruby方式 (适用于有Ruby的环境):\033[0m"
echo -e "ruby -e 'exec \"/bin/bash\"'\n"

# 添加更多有用信息
echo -e "\033[1;33m提示：\033[0m"
echo -e "- 如果/bin/bash不可用，尝试使用/bin/sh或其他可用shell"
echo -e "- 在某些受限环境中，可能需要尝试多种方法"
echo -e "- 生成shell后，记得检查当前用户权限和环境变量\n"

