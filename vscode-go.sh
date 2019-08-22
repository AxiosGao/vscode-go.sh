echo -e "[step:1] 检查是否安装Git"
if which git >/dev/null; then
    echo -e "已安装 ---\u2714 ok"
else
    echo -e "未安装 ---\u2718 error"
    exit 1
fi

echo ""
echo -e "[step:2] 检查是否安装Golang"
if which go >/dev/null; then
    echo -e "已安装 ---\u2714 ok"
    echo "GOROOT:"$GOROOT
    echo "GOPATH:"$GOPATH
    echo "GOBIN:"$GOBIN
else
    echo -e "未安装 ---\u2718 error"
    exit 1
fi

echo ""
echo "[step:3] 初始化GOPATH目录结构"
cd $GOPATH
mkdir -p bin
mkdir -p pkg
mkdir -p src

echo ""
echo "[step:4] 下载安装Go工具包"
mkdir -p src/golang.org/x
cd src/golang.org/x

echo ""
echo "[step:4-1] 下载github.com/golang/tools"
git clone https://github.com/golang/tools.git tools
echo -e "下载成功或本机已经存在 ---\u2714 ok"

echo ""
echo "[step:4-2] 下载github.com/golang/lint"
git clone https://github.com/golang/lint.git lint
echo -e "下载成功或本机已经存在 ---\u2714 ok"

echo ""
echo "[step:4-3] 下载github.com/golang/sync"
git clone https://github.com/golang/sync.git
echo -e "下载成功或本机已经存在 ---\u2714 ok"

echo ""
echo "[step:4-4] 下载github.com/golang/xerrors"
git clone https://github.com/golang/xerrors.git
echo -e "下载成功或本机已经存在 ---\u2714 ok"

cd $GOPATH
echo ""
echo "[step:4-5-1] 下载github.com/stamblerre/gocode"
mkdir -p src/github.com/stamblerre
cd src/github.com/stamblerre
git clone https://github.com/stamblerre/gocode.git
echo -e "下载成功或本机已经存在 ---\u2714 ok"
echo "[step:4-5-2] 安装github.com/stamblerre/gocode"
cd $GOPATH
go install github.com/stamblerre/gocode
echo -e "安装github.com/stamblerre/gocode ---\u2714 ok"

cd $GOPATH
echo ""
echo "[step:4-6-1] 下载github.com/karrick/godirwalk"
mkdir -p src/github.com/karrick
cd src/github.com/karrick
git clone https://github.com/karrick/godirwalk.git
echo -e "下载成功或本机已经存在 ---\u2714 ok"

cd $GOPATH
echo ""
echo "[step:4-6-1] 下载github.com/pkg/errors"
mkdir -p src/github.com/pkg/errors
cd src/github.com/pkg
git clone https://github.com/pkg/errors.git
echo -e "下载成功或本机已经存在 ---\u2714 ok"

cd $GOPATH
echo ""
echo "[step:4-6-1] 下载github.com/uudashr/gopkgs"
mkdir -p src/github.com/uudashr
cd src/github.com/uudashr
git clone https://github.com/uudashr/gopkgs.git
echo -e "下载成功或本机已经存在 ---\u2714 ok"
echo "[step:4-6-2] 安装github.com/uudashr/gopkgs"
cd $GOPATH
go install github.com/uudashr/gopkgs/cmd/gopkgs
echo -e "安装github.com/uudashr/gopkgs ---\u2714 ok"

cd $GOPATH
echo ""
echo "[step:4-7-1] 下载github.com/mdempsky/gocode"
mkdir -p src/github.com/mdempsky
cd src/github.com/mdempsky
git clone https://github.com/mdempsky/gocode.git
echo -e "下载成功或本机已经存在 ---\u2714 ok"
echo "[step:4-7-2] 安装github.com/mdempsky/gocode"
cd $GOPATH
go install github.com/mdempsky/gocode 
echo -e "安装github.com/mdempsky/gocode ---\u2714 ok"

cd $GOPATH
echo ""
echo "[step:4-8-1] 下载github.com/sqs/goreturns"
mkdir -p src/github.com/sqs
cd src/github.com/sqs
git clone https://github.com/sqs/goreturns.git
echo -e "下载成功或本机已经存在 ---\u2714 ok"
echo "[step:4-8-2] 安装github.com/sqs/goreturns"
cd $GOPATH
go install github.com/sqs/goreturns
echo -e "安装github.com/sqs/goreturns ---\u2714 ok"

cd $GOPATH
echo ""
echo "[step:4-9-1] 下载github.com/cweill/gotests/gotests"
mkdir -p src/github.com/cweill
cd src/github.com/cweill
git clone https://github.com/cweill/gotests.git gotests
echo -e "下载成功或本机已经存在 ---\u2714 ok"
echo "[step:4-9-2] 安装github.com/cweill/gotests/gotests"
cd $GOPATH
go install github.com/cweill/gotests/gotests
echo -e "安装github.com/cweill/gotests/gotests ---\u2714 ok"

echo ""
echo ""
echo ""
echo -e "恭喜你，vscode golang环境设置成功 ---\u2714 ok"