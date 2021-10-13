# HW-Terraform

##  Задача 1 (вариант с AWS). Регистрация в aws и знакомство с основами

Создайте аккаут aws.

создан root oleg.rovenskiy
создан IAS oleg.rovenskiy_2

выбран region eu-central-1

Установите c aws-cli https://aws.amazon.com/cli/.

    C:\Program Files\Amazon\AWSCLI\bin>aws --version
    aws-cli/1.20.60 Python/3.6.0 Windows/10 botocore/1.21.60
    
    C:\Program Files\Amazon\AWSCLI\bin>

Выполните первичную настройку aws-sli

    C:\Program Files\Amazon\AWSCLI\bin>aws configure
    AWS Access Key ID [None]: AKIAX7AYMYUK**********
    AWS Secret Access Key [None]: **************************
    Default region name [None]: eu-central-1
    Default output format [None]: json
    
    C:\Program Files\Amazon\AWSCLI\bin>
    
    C:\Program Files\Amazon\AWSCLI\bin>aws configure list
          Name                    Value             Type    Location
          ----                    -----             ----    --------
       profile                <not set>             None    None
    access_key     ****************42UV shared-credentials-file
    secret_key     ****************ge74 shared-credentials-file
        region             eu-central-1      config-file    ~/.aws/config
    
    C:\Program Files\Amazon\AWSCLI\bin>


Создайте IAM политику для терраформа c правами

![права](https://github.com/olegrovenskiy/HW-Terraform/blob/main/%D0%BF%D1%80%D0%B0%D0%B2%D0%B0.png)

http://c2n.me/4dDM8PA

Добавьте переменные окружения

Добавлено

Создать ВМ

![ВМ](https://github.com/olegrovenskiy/HW-Terraform/blob/main/%D0%B2%D0%BC.png)

Консоль от ВМ

![консоль](https://github.com/olegrovenskiy/HW-Terraform/blob/main/%D0%B2%D0%BC-%D0%BA%D0%BE%D0%BD%D1%81%D0%BE%D0%BB%D1%8C.png)

##  Задача 2


