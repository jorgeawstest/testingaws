aws cloudformation deploy --template-file ../awsformation/createS3.json --stack-name createS3stack

wget https://web.stanford.edu/class/archive/cs/cs109/cs109.1166/stuff/titanic.csv
aws s3 cp titanic.csv s3://testingaws-titanic/inputdata/titanic.csv
aws s3 cp ../awsformation/titanicstepMachine.json s3://testingaws-titanic/statemachine/titanicstepMachine.json
aws s3 cp ../awsformation/faostepMachine.json s3://testingaws-faostat/statemachine/faostepMachine.json
rm titanic.csv

aws s3 cp ../awsformation/faodeploydata.sh s3://testingaws-faostat/bin/faodeploydata.sh

# http://www.fao.org/faostat/en/#home
# wget http://fenixservices.fao.org/faostat/static/bulkdownloads/FAOSTAT.zip
# aws s3 cp FAOSTAT.zip s3://testingaws-faostat/inputdata/zip/FAOSTAT.zip

