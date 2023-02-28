@echo off
echo Parando Docker-Compose
docker-compose down
echo Executando limpeza de volumes
docker volume prune -f
@REM echo Parando e removendo todos os containers
@REM for /f "tokens=*" %%i in ('docker ps -aq') do (
@REM     docker rm -f %%i
@REM )
echo Removendo todas as imagens
@REM for /f "tokens=*" %%i in ('docker images -aq') do (
@REM     docker image rm -f %%i
@REM )
docker image rm asap_base_image
@REM echo Executando limpeza de sistema docker
@REM docker system prune -a -f
echo Pronto