# export VISION_KEY=put into .bashrc guitar-finger-cord-computervision | Keys and Endpoint
export VISION_ENDPOINT=https://guitar-finger-cord-computervision.cognitiveservices.azure.com/

export logfile="guitar-cord-output-$(date +"%Y_%m_%d_%I_%M_%p").txt"
python azure-ai-image-check.py >results/$logfile
git add results/$logfile
git commit -am 'added test results to git $logfile results'

cat results/$logfile