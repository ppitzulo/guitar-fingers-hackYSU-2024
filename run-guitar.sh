# export VISION_KEY=put into .bashrc guitar-finger-cord-computervision | Keys and Endpoint
export VISION_ENDPOINT=https://guitar-finger-cord-computervision.cognitiveservices.azure.com/

export logfile="guitar-cord-output-$(date +"%Y_%m_%d_%I_%M_%p").txt"
python azure-ai-image-check.py >output/$logfile
git add output/*
git commit -am "added test results to git $logfile"

cat output/$logfile