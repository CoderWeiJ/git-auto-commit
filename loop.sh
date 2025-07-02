
echo "请输入sudo密码（仅需输入一次）"
sudo echo "权限验证成功，开始执行脚本..."

if [ ! $1 ]; then  
   echo 'ERROR: Need to apply loop param'    
   exit  
fi  
for i in $(seq 1 $1)
do 
   `sh ./push.sh`
   time=`date +'%G-%m-%d %H:%M:%S' -d '-1 days'`
   timedatectl set-time "$time"
done


