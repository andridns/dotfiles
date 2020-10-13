sudo apt update
sudo apt install python3-pip
sudo apt install uvicorn
pip3 install fastapi numpy pandas
pip3 install httptools uvloop
git clone git@github.com:andridns/aws_fastapi.git
cd aws_fastapi
uvicorn main:app --reload