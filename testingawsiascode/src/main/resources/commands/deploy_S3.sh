aws cloudformation deploy --template-file ../awsformation/createS3.json --stack-name createS3stack

wget https://web.stanford.edu/class/archive/cs/cs109/cs109.1166/stuff/titanic.csv
aws s3 cp titanic.csv s3://s3titanic/inputdata/titanic.csv
aws s3 cp ../awsformation/titanicstepMachine.json s3://s3titanic/statemachine/titanicstepMachine.json

# http://www.fao.org/faostat/en/#home
wget http://fenixservices.fao.org/faostat/static/bulkdownloads/FAOSTAT.zip
aws s3 cp FAOSTAT.zip s3://s3titanic/inputdata/zip/FAOSTAT.zip

