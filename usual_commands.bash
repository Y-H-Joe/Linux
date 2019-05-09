###Hopper_Cluster###
##module
: <<'Comment'
  Modules Release 3.2.10 2012-12-21 (Copyright GNU GPL v2 1991):

  Usage: module [ switches ] [ subcommand ] [subcommand-args ]

Switches:
	-H|--help		this usage info
	-V|--version		modules version & configuration options
	-f|--force		force active dependency resolution
	-t|--terse		terse    format avail and list format
	-l|--long		long     format avail and list format
	-h|--human		readable format avail and list format
	-v|--verbose		enable  verbose messages
	-s|--silent		disable verbose messages
	-c|--create		create caches for avail and apropos
	-i|--icase		case insensitive
	-u|--userlvl <lvl>	set user level to (nov[ice],exp[ert],adv[anced])
  Available SubCommands and Args:
	+ add|load		modulefile [modulefile ...]
	+ rm|unload		modulefile [modulefile ...]
	+ switch|swap		[modulefile1] modulefile2
	+ display|show		modulefile [modulefile ...]
	+ avail			[modulefile [modulefile ...]]
	+ use [-a|--append]	dir [dir ...]
	+ unuse			dir [dir ...]
	+ update
	+ refresh
	+ purge
	+ list
	+ clear
	+ help			[modulefile [modulefile ...]]
	+ whatis		[modulefile [modulefile ...]]
	+ apropos|keyword	string
	+ initadd		modulefile [modulefile ...]
	+ initprepend		modulefile [modulefile ...]
	+ initrm		modulefile [modulefile ...]
	+ initswitch		modulefile1 modulefile2
	+ initlist
	+ initclear
Comment

###查看当前工作路径
pwd

###根据关键词反向批量删除文件
rm -r `ls | grep -v 'fastq'`

###conda
#添加channel
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
#查看已经添加的channels
conda config --get channels
#删除channel
conda config --remove channels https://mirrors.ustc.edu.cn/anaconda/cloud/conda-forge
#查看配置
conda config -–show
# 创建一个名为python34的环境，指定Python版本是3.4（不用管是3.4.x，conda会为我们自动寻找3.4.x中的最新版本）
conda create --name python34 python=3.4
# 安装好后，使用activate激活某个环境
activate python34 # for Windows
source activate python34 # for Linux & Mac
# 激活后，会发现terminal输入的地方多了python34的字样，实际上，此时系统做的事情就是把默认2.7环境从PATH中去除，再把3.4对应的命令加入PATH
# 此时，再次输入
python --version
# 可以得到`Python 3.4.5 :: Anaconda 4.1.1 (64-bit)`，即系统已经切换到了3.4的环境
# 如果想返回默认的python 2.7环境，运行
deactivate python34 # for Windows
source deactivate python34 # for Linux & Mac
# 删除一个已有的环境
conda remove --name python34 --all
# 安装package
conda install -n python34 numpy
#或者直接
conda install fastqc
# 也可以通过-c或--channel指定通过某个channel安装，但是我一直没成功过
# conda会从从远程搜索scipy的相关信息和依赖项目，对于python 3.4，conda会同时安装numpy和mkl（运算加速的库）
# 查看已经安装的packages
conda list

###alias
alias mytop='top -u yihang'
