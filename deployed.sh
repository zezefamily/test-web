# 容器名称
CONTAINER_NAME="web-app"
# 镜像名称
IMAGE_NAME="client-app"

# 检测是否支持指令
function CommandSupportCheck(){
    CommandSupport=`which $1`
    echo $CommandSupport
    if [ -z "$CommandSupport" ]; then
        echo "当前环境不支持 $1 指令"
        exit 0
    fi
}

# 同步最新代码
CommandSupportCheck "git"
git pull

# 初始化前端项目
CommandSupportCheck "npm"
echo "===>开始初始化项目"
npm install
echo "===>项目初始化完成"

# 检查是否有 docker 环境
CommandSupportCheck "docker"

# 检测是否存在 正在运行的 的容器
# docker inspect -f '{{.State.Status}}' $CONTAINER_NAME
# 如果存在，停止并删除镜像
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
# # 构建/更新自定义镜像
docker build . -t $IMAGE_NAME
# # 运行启动容器
docker run --name $CONTAINER_NAME  -d -p 8080:80 $IMAGE_NAME