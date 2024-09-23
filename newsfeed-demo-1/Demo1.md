

## verify all required software installed correctly

```
curl -sL https://git.io/_has | bash -s terraform aws git zip unzip python3
```

##  Demo 1 - Newfeeds AWS lambda application 

#### Step 1 : Open appcd portal via cloud.app.io 

![](./login-page.png)

#### Step2 : login with your creditionals 

```
git clone https://github.com/appcd-demo/news-feed 
cd news-feed 
sh build.sh 
✗ ls
Pipfile  build.sh main.py  main.zip package
```

#### Let's Onboard Your Repositories


![](./Create-appstack.png)

![](./step2.png)



### Add Public Repositories 

![](./step3.png)

### Create appstack 
![](./Create-appstack.png)


### Select AppStack from Source Code 
> 1. ✅ Checkmark Repo 
> 2. add required details such as compoment name analyzing path 
> 3. Container Registory 
> 4. Dockerfile path 


![](./step4.png)

> 5. Click on proceed 


### Select Cloud Service ( where you want to deploy your application base )

![](./step6.png)

> Select AWS Lambda ( because our application is AWS lambda python Application )


## apply Security Policies base on Services 

![](./step7.png)

### AppStack will analyze your application 


![](./step8.png)


### Expand app view 


![](./step-9.png)

> click on veriosn 1 


### Visualize your deployment architecture 


![](./step10.png)


> Click on news-feed function 

![](./step11.png)


>  

![](./step12.png)

add Filename as `main.zip`

> Create Function URL set as `true` 

![](./Step13.png)


### Export the IaC from appStack 

![](./step14.png)




### create terraform folder and unzip and add to terraform folder 


```
(base) ➜ makdir terraform 
(base) ➜ cd terraform 
(base) ➜  terraform git:(main) ✗ ls


### add generated main.zip here 

README.md         modules           outputs.tf        terraform.tfstate
main.zip          modules.tf.json   provider.tf       variables.tf

```

### export your AWS keys

```
export AWS_ACCESS_KEY_ID 
export AWS_SECRET_ACCESS_KEY
export AWS_SESSION_TOKEN
```

### terraform init 

```
(base) ➜  terraform git:(main) ✗ terraform init                                 

Initializing the backend...
Initializing modules...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v5.63.1

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```


### terraform plan 


```
terraform plan                                 
var.region
  AWS region in which the project needs to be setup (us-east-1, ca-west-1, eu-west-3, etc)

  Enter a value: us-east-1


```

### terraform apply 


```
terraform apply 
var.region
  AWS region in which the project needs to be setup (us-east-1, ca-west-1, eu-west-3, etc)

  Enter a value: us-east-1


Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

Outputs:

aws_cloudwatch_log_group_aws_lambda_news_feed_function_arn = "arn:aws:logs:us-east-1:438465137822:log-group:/aws/lambda/news-feed-function"
aws_cloudwatch_log_group_aws_lambda_news_feed_function_name = "/aws/lambda/news-feed-function"
aws_iam_role_news_feed_role_arn = "arn:aws:iam::438465137822:role/news-feed-role"
aws_iam_role_news_feed_role_name = "news-feed-role"
aws_lambda_news_feed_function_function_arn = "arn:aws:lambda:us-east-1:438465137822:function:news-feed-function"
aws_lambda_news_feed_function_function_name = "news-feed-function"
aws_lambda_news_feed_function_function_url = "https://ue3z4eswm24a6kvncbp3d7joi40mdkqc.lambda-url.us-east-1.on.aws/"
aws_lambda_news_feed_function_invoke_arn = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-1:438465137822:function:news-feed-function/invocations"

```

### Cheers we deployed our news application 

```
aws_lambda_news_feed_function_function_url = <Your AWS Lambda URL> 

```

### Terraform destroy 

```
terraform destroy
var.region
  AWS region in which the project needs to be setup (us-east-1, ca-west-1, eu-west-3, etc)

  Enter a value: us-east-1 
```
