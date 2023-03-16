CONTAINER_NAME="web-app"
IMAGE_NAME="client-app"
# 检查是否有 docker 环境

# 检测是否存在 正在运行的 的容器
# docker inspect -f '{{.State.Status}}' $CONTAINER_NAME
# 如果存在，停止并删除镜像
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
# # 构建/更新自定义镜像
docker build . -t $IMAGE_NAME
# # 运行启动容器
docker run --name $CONTAINER_NAME  -d -p 8080:80 $IMAGE_NAME