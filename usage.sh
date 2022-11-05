#!/bin/zsh
#!/bin/zsh
#https://blog.pigno.se/post/184576332493/%EC%99%84%EB%B2%BD%ED%95%9C-mac-%EC%9E%91%EC%97%85%ED%99%98%EA%B2%BD-%EC%84%B8%ED%8C%85%ED%95%98%EA%B8%B0-vim-zsh-iterm


echo "파라미터 개수 : $#"
echo "1파라미터: $1"
echo "2파라미터: $2"
echo "3파라미터: $3"
echo "모든 파라미터 내용 : $@"


echo '
## 안드로이드에서 sshd 실행후 ssh 접속
## android, ssh u0_a501@172.30.1.13 -p 8022
## mac ssh hg@172.30.1.3
## sftp -P 8022 u0_a501@172.30.1.13 , get a.md put a.md
## 스크린생성 screen -l
## 스크린붙이기 screen -ls, screen -x 스크린반대쪽스크린이름: 방향은 상관없음
## 맥루트에서 안드로이드 sftp 붙이기 
## 맥 lte ssh hg@112.165.191.193
'

echo '
도커 모든 컨테이너 종료
for i in $(docker ps -q); do docker kill $i; done;
docker stop $(docker ps -aq)

도커 원격에서 프로그램 실행
open -a docker


## A=$(which docker) && A=$(dirname $A) && cd  $A
## open -a docker
## docker stop $(docker ps -a -q)
## # 컨테이너 -> 호스트
docker container cp <컨테이너 식별자>:<컨테이너 안의 파일 경로> <호스트 디렉토리 경로>
# 호스트 -> 컨테이너
docker container cp <호스트의 파일> <컨테이너 식별자>:<컨테이너 안의 파일 경로>

종료된 컨테이너 목록
docker ps -a

실행중인 컨테이너 목록을 보여준다
Docker ps -q

도커를 종료하면서 빠져나옴
exit 

컨테이너 접속
접속을 유지하면서 빠져나오기 ctrl + P 입력 후 Q 입력
docker exec -it <컨테이너이름> /bin/bash
docker attach [컨테이너 id 또는 name]


docker stop <컨테이너이름>
docker start <컨테이너이름>
docker restart <컨테이너이름>
실행중인 컨테이너 리스트 출력
docker ps
실행했던 컨테이너 리스트의 이력을 출력
docker ps -a
'




echo '
ps aux | grep 5434
lsof -i :portNumber
lsof -i :5900
kill PID
kill 59553
kill -9 PID
kill -9 59553
lsof -ti tcp:8080 | xargs kill

pbcopy < a.txt
a.txt에 있는 내용을 클립보드에 복사 문자를 넣으면 
..% 
%까지나오지만
cd $(pbpaste) 
하면 개행문자는 무시하고 명령어가 실행된다



pbpaste > t.txt

'

echo '

'



echo 'free_port 80 # you need to change this port number'
echo '

맥용 터미널에서 맥용 응용 프로그램을 실행하는 방법이 있는데요.
모르고 있었는데 아주 간단하군요.

open 이라는 명령어 입니다. 이것은 디렉토리를 폴더 창으로 여는 명령어인데요.
맥응용프로램도 디렉토리로 구성되어있는데 이것을 열면 프로그램이 실행 됩니다.

아래와 같이 하면 some이 실됩니다.
open /path/to/some.app

이런 식으로 파일을 오픈하면
open "/Volumes/Macintosh HD/foo.txt"
LaunchServices 에 등록된 기본 프로그램으로 이 텍스트 파일이 열립니다.
mov 파일을 오픈하면 QuickTime으로 열리겠지요.

open /Applications/
디렉토리를 파인더에서 오픈 합니다.

open -a /Applications/TextEdit.app "/Volumes/Macintosh HD/foo.txt"
opens the document in the application specified (in this case, TextEdit).
문서를 지정된 프로그램으로 열게 됩니다. 이경우에는 TextEdit로 foo.txt파일을 열게되겠지요.

open -e "/Volumes/Macintosh HD/foo.txt"
-e 옵션을 주면 모든 파일을 TextEdit로 열게 됩니다. 

open http://www.apple.com/
URL로 오픈하면 기본 브라우져에서 홈 페이지를 오픈 합니다.

이런식으로 URI형태로 파일을 열 수되 있습니다.
open "file://localhost/Volumes/Macintosh HD/foo.txt"
open "file://localhost/Volumes/Macintosh HD/Applications/"

터미널에서 작업 중 사용하면 유용할 것 같습니다.

'
RESULT=$(uname -r)
echo $RESULT

echo '
mac 실행중인 프로세스 죽이는 방법

ps -acx
ps -acx | grep 'docker'| awk '{print $1,$2,$3,$4}'

ps -ef|grep 'docker'|awk '{print $1,$2,$3,$4}'
kill -9 `ps -ef|grep 'docker'|awk '{print $2}'`
'
screen -S androids | screen -ls | grep 'androids' | awk '{print $1}' 

# echo '
# process kill
# ps -ef|grep 'docker'|awk '{print $1,$2,$3,$4}'
# kill -9 `ps -ef|grep 'docker'|awk '{print $2}'`

# mac docker process kill
# ps -ef|grep 'docker'|awk '{print $1,$2,$3,$4}'


echo ' 

usage
1.
proot-distro list
proot-distro login ubuntu
==> vscode,  cd code-server ~ ,  cd bin ,excution=> ./code-server ,link https://idiqpnm.tistory.com/7
==> localhost:8080 pass:hg
proot-disrto login alpine

2.docker in alpine on termux
Once installation is complete, power off the VM (command poweroff) and boot again without cdrom:

qemu-system-x86_64 -machine q35 -m 1024 -smp cpus=2 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
  -netdev user,id=n1,hostfwd=tcp::2222-:22 -device virtio-net,netdev=n1 \
  -nographic alpine.img
Install docker and enable on boot:

alpine:~# apk update && apk add docker
alpine:~# service docker start
alpine:~# rc-update add docker

3.vnc
http://blog.securekim.com/2022/03/termux-gui-vscode.html
cd WORKSPACE
./start-ubuntu20.sh
./vncserver-start

Remote Desktop Manager
terminal에서 code . vscode execution

4.git
chmod +x push_build
./push_build

git init
git add .
git commit "init-1"
git remote -v

git remote add main or origin gitrepaddress

git pull origin main
git push orgin main

githomepage : d10000usd.githum.io

5.hexo
link : https://seungseop.github.io/2019/05/16/hexo-theme-next/
setup

npm install hexo-cli , hexo-cli -g
npm install hexo-deployer-git --save
npm install hexo-server --save
npm install hexo-browsersync --save
==> hexo server --draft --open # debug mode


hexo init mainfolder
cd mainfolder
npm install
hexo clean
hexo generate
hexo deploy ==> change git setting in __config
hexo server --draft --open

src : git remote add origin http://github.com/d10000usd/d10000usd.github.io-src, git push origin main
git pull

6. etc
link : https://www.youtube.com/watch?v=twpHZVzr5Es
ssh u0_a455@172.30.1.13 -p 8022
'






############################################################################
#                                                                          #
#               ------- Useful Docker Aliases --------                     #
#                                                                          #
#     # Installation :                                                     #
#     copy/paste these lines into your .bashrc or .zshrc file or just      #
#     type the following in your current shell to try it out:              #
#     wget -O - https://gist.githubusercontent.com/jgrodziski/9ed4a17709baad10dbcd4530b60dfcbb/raw/d84ef1741c59e7ab07fb055a70df1830584c6c18/docker-aliases.sh | bash
#                                                                          #
#     # Usage:                                                             #
#     daws <svc> <cmd> <opts> : aws cli in docker with <svc> <cmd> <opts>  #
#     dc             : docker-compose                                      #
#     dcu            : docker-compose up -d                                #
#     dcd            : docker-compose down                                 #
#     dcr            : docker-compose run                                  #
#     dex <container>: execute a bash shell inside the RUNNING <container> #
#     di <container> : docker inspect <container>                          #
#     dim            : docker images                                       #
#     dip            : IP addresses of all running containers              #
#     dl <container> : docker logs -f <container>                          #
#     dnames         : names of all running containers                     #
#     dps            : docker ps                                           #
#     dpsa           : docker ps -a                                        #
#     drmc           : remove all exited containers                        #
#     drmid          : remove all dangling images                          #
#     drun <image>   : execute a bash shell in NEW container from <image>  #
#     dsr <container>: stop then remove <container>                        #
#                                                                          #
############################################################################



echo '
## 안드로이드에서 sshd 실행후 ssh 접속
## android, ssh u0_a501@172.30.1.13 -p 8022
## mac ssh hg@172.30.1.3
## sftp -P 8022 u0_a501@172.30.1.13 , get a.md put a.md
## 스크린생성 screen -l
## 스크린붙이기 screen -ls, screen -x 스크린반대쪽스크린이름: 방향은 상관없음
## 맥루트에서 안드로이드 sftp 붙이기 
## 맥 lte ssh hg@112.165.191.193
## history 200
## cp, mv [파일] [옮길 폴더] : [파일] [옮길 폴더]
## 파일 읽어서 클립보드로 이동
## pbcopy < test.txt
##  pbpaste > test.txt
## npm 글로벌 삭제
##  npm list -g --depth=0
##  npm uninstall -g  <패키지이름>
## /opt/homebrew/lib/node_modules/markdown-to-html
## github-markdown freq.md -h -t{DIRANAME} -s  style.css > result.html
## github-markdown dillinger.md -h -t {DIRANAME} -s  github-style.css > result.html
##  mac sudo vi /etc/services 포트번호 변경/추가
'




echo "파라미터 개수 : $#"
echo "1파라미터: $1"
echo "2파라미터: $2"
echo "3파라미터: $3"
echo "모든 파라미터 내용 : $@"


echo '
## 안드로이드에서 sshd 실행후 ssh 접속
## android, ssh u0_a501@172.30.1.13 -p 8022
## mac ssh hg@172.30.1.3
## sftp -P 8022 u0_a501@172.30.1.13 , get a.md put a.md
## 스크린생성 screen -l
## 스크린붙이기 screen -ls, screen -x 스크린반대쪽스크린이름: 방향은 상관없음
## 맥루트에서 안드로이드 sftp 붙이기 
## 맥 lte ssh hg@112.165.191.193
'

echo '
도커 모든 컨테이너 종료
for i in $(docker ps -q); do docker kill $i; done;
docker stop $(docker ps -aq)

도커 원격에서 프로그램 실행
open -a docker


## A=$(which docker) && A=$(dirname $A) && cd  $A
## open -a docker
## docker stop $(docker ps -a -q)
## # 컨테이너 -> 호스트
docker container cp <컨테이너 식별자>:<컨테이너 안의 파일 경로> <호스트 디렉토리 경로>
# 호스트 -> 컨테이너
docker container cp <호스트의 파일> <컨테이너 식별자>:<컨테이너 안의 파일 경로>

종료된 컨테이너 목록
docker ps -a

실행중인 컨테이너 목록을 보여준다
Docker ps -q

도커를 종료하면서 빠져나옴
exit 

컨테이너 접속
접속을 유지하면서 빠져나오기 ctrl + P 입력 후 Q 입력
docker exec -it <컨테이너이름> /bin/bash
docker attach [컨테이너 id 또는 name]


docker stop <컨테이너이름>
docker start <컨테이너이름>
docker restart <컨테이너이름>
실행중인 컨테이너 리스트 출력
docker ps
실행했던 컨테이너 리스트의 이력을 출력
docker ps -a
'




echo '
ps aux | grep 5434
lsof -i :portNumber
lsof -i :5900
kill PID
kill 59553
kill -9 PID
kill -9 59553
lsof -ti tcp:8080 | xargs kill

pbcopy < a.txt
a.txt에 있는 내용을 클립보드에 복사 문자를 넣으면 
..% 
%까지나오지만
cd $(pbpaste) 
하면 개행문자는 무시하고 명령어가 실행된다



pbpaste > t.txt

'

echo '

'


function free_port() {
    if [ -z $1 ] 
    then
        echo no Port given
    else
        PORT=$1;
        PID=$(sudo lsof -i :$PORT) # store the PID, that is using this port 

        if [ -z $PID ] 
        then
            echo port: $PORT is already free.
        else
            sudo kill -9 $PID # kill the process, which frees the port
            echo port: $PORT is now free.
        fi
    fi
}

echo 'free_port 80 # you need to change this port number'
echo '

맥용 터미널에서 맥용 응용 프로그램을 실행하는 방법이 있는데요.
모르고 있었는데 아주 간단하군요.

open 이라는 명령어 입니다. 이것은 디렉토리를 폴더 창으로 여는 명령어인데요.
맥응용프로램도 디렉토리로 구성되어있는데 이것을 열면 프로그램이 실행 됩니다.

아래와 같이 하면 some이 실됩니다.
open /path/to/some.app

이런 식으로 파일을 오픈하면
open "/Volumes/Macintosh HD/foo.txt"
LaunchServices 에 등록된 기본 프로그램으로 이 텍스트 파일이 열립니다.
mov 파일을 오픈하면 QuickTime으로 열리겠지요.

open /Applications/
디렉토리를 파인더에서 오픈 합니다.

open -a /Applications/TextEdit.app "/Volumes/Macintosh HD/foo.txt"
opens the document in the application specified (in this case, TextEdit).
문서를 지정된 프로그램으로 열게 됩니다. 이경우에는 TextEdit로 foo.txt파일을 열게되겠지요.

open -e "/Volumes/Macintosh HD/foo.txt"
-e 옵션을 주면 모든 파일을 TextEdit로 열게 됩니다. 

open http://www.apple.com/
URL로 오픈하면 기본 브라우져에서 홈 페이지를 오픈 합니다.

이런식으로 URI형태로 파일을 열 수되 있습니다.
open "file://localhost/Volumes/Macintosh HD/foo.txt"
open "file://localhost/Volumes/Macintosh HD/Applications/"

터미널에서 작업 중 사용하면 유용할 것 같습니다.

'
# RESULT=$(uname -r)
# echo $RESULT

echo '
mac 실행중인 프로세스 죽이는 방법

ps -acx
ps -acx | grep 'docker'| awk '{print $1,$2,$3,$4}'

ps -ef|grep 'docker'|awk '{print $1,$2,$3,$4}'
kill -9 `ps -ef|grep 'docker'|awk '{print $2}'`
'
# screen -S androids | screen -ls | grep 'androids' | awk '{print $1}' 

#echo '
# process kill
# ps -ef|grep 'docker'|awk '{print $1,$2,$3,$4}'
# kill -9 `ps -ef|grep 'docker'|awk '{print $2}'`

# mac docker process kill
# ps -ef|grep 'docker'|awk '{print $1,$2,$3,$4}'
function free_port() {
    if [ -z $1 ] 
    then
        echo no Port given
    else
        PORT=$1;
        PID=$(sudo lsof -i :$PORT) # store the PID, that is using this port 

        if [ -z $PID ] 
        then
            echo port: $PORT is already free.
        else
            sudo kill -9 $PID # kill the process, which frees the port
            echo port: $PORT is now free.
        fi
    fi
}

# alias daws=d-aws-cli-fn
# alias dc=dc-fn
# alias dcu="docker-compose up -d"
# alias dcd="docker-compose down"
# alias dcr=dcr-fn
# alias dex=dex-fn
# alias di=di-fn
# alias dim="docker images"
# alias dip=dip-fn
# alias dl=dl-fn
# alias dnames=dnames-fn
# alias dps="docker ps"
# alias dpsa="docker ps -a"
# alias drmc=drmc-fn
# alias drmid=drmid-fn
# alias drun=drun-fn
# alias dsp="docker system prune --all"
# alias dsr=dsr-fn
# ############################################################################
# ############################################################################

function dnames-fn {
	for ID in `docker ps | awk '{print $1}' | grep -v 'CONTAINER'`
	do
    	docker inspect $ID | grep Name | head -1 | awk '{print $2}' | sed 's/,//g' | sed 's%/%%g' | sed 's/"//g'
	done
}

function dip-fn {
    echo "IP addresses of all named running containers"

    for DOC in `dnames-fn`
    do
        IP=`docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}} {{end}}' "$DOC"`
        OUT+=$DOC'\t'$IP'\n'
    done
    echo -e $OUT | column -t
    unset OUT
}

function dex-fn {
	docker exec -it $1 ${2:-bash}
}

function di-fn {
	docker inspect $1
}

function dl-fn {
	docker logs -f $1
}

function drun-fn {
	docker run -it $1 $2
}

function dcr-fn {
	docker-compose run $@
}

function dsr-fn {
	docker stop $1;docker rm $1
}

function drmc-fn {
       docker rm $(docker ps --all -q -f status=exited)
}

function drmid-fn {
       imgs=$(docker images -q -f dangling=true)
       [ ! -z "$imgs" ] && docker rmi "$imgs" || echo "no dangling images."
}

# in order to do things like dex $(dlab label) sh
function dlab {
       docker ps --filter="label=$1" --format="{{.ID}}"
}

function dc-fn {
        docker-compose $*
}

function d-aws-cli-fn {
    docker run \
           -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
           -e AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \
           -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
           amazon/aws-cli:latest $1 $2 $3
}

