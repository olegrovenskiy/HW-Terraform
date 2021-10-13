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
Результат успешного выполнения команды terraform plan с указаными в задании требованиями:

        c:\Oleg\HW-Terraform>terraform plan
        var.AWS_ACCESS_KEY_ID
        Enter a value: *********************
        
        var.AWS_SECRET_ACCESS_KEY
        Enter a value: ********************
        
        
        Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
        following symbols:
          + create
        
        Terraform will perform the following actions:
        
         # aws_instance.Netology-HWork will be created
        + resource "aws_instance" "Netology-HWork" {
            + ami                                  = "ami-07a8725e71b92c4b3"
            + arn                                  = (known after apply)
            + associate_public_ip_address          = (known after apply)
            + availability_zone                    = (known after apply)
            + cpu_core_count                       = (known after apply)
            + cpu_threads_per_core                 = (known after apply)
            + disable_api_termination              = (known after apply)
            + ebs_optimized                        = (known after apply)
            + get_password_data                    = false
            + host_id                              = (known after apply)
            + id                                   = (known after apply)
            + instance_initiated_shutdown_behavior = (known after apply)
            + instance_state                       = (known after apply)
            + instance_type                        = "t2.micro"
            + ipv6_address_count                   = (known after apply)
            + ipv6_addresses                       = (known after apply)
            + key_name                             = (known after apply)
            + monitoring                           = (known after apply)
            + outpost_arn                          = (known after apply)
            + password_data                        = (known after apply)
            + placement_group                      = (known after apply)
            + primary_network_interface_id         = (known after apply)
            + private_dns                          = (known after apply)
            + private_ip                           = (known after apply)
            + public_dns                           = (known after apply)
            + public_ip                            = (known after apply)
            + secondary_private_ips                = (known after apply)
            + security_groups                      = (known after apply)
            + source_dest_check                    = true
            + subnet_id                            = (known after apply)
            + tags                                 = {
               + "Name" = "Netol-HW-Test"
                }
           + tags_all                             = {
              + "Name" = "Netol-HW-Test"
          }
            + tenancy                              = (known after apply)
            + user_data                            = (known after apply)
            + user_data_base64                     = (known after apply)
            + vpc_security_group_ids               = (known after apply)
        
            + capacity_reservation_specification {
                + capacity_reservation_preference = (known after apply)
        
                + capacity_reservation_target {
                   + capacity_reservation_id = (known after apply)
                    }
                }
        
            + credit_specification {
                 + cpu_credits = "unlimited"
                }
        
            + ebs_block_device {
                + delete_on_termination = (known after apply)
                + device_name           = (known after apply)
                + encrypted             = (known after apply)
                + iops                  = (known after apply)
                + kms_key_id            = (known after apply)
                + snapshot_id           = (known after apply)
                + tags                  = (known after apply)
                + throughput            = (known after apply)
                + volume_id             = (known after apply)
                + volume_size           = (known after apply)
                + volume_type           = (known after apply)
                }
        
            + enclave_options {
                + enabled = (known after apply)
              }
        
             + ephemeral_block_device {
                  + device_name  = (known after apply)
                  + no_device    = (known after apply)
                  + virtual_name = (known after apply)
              }
        
              + metadata_options {
               + http_endpoint               = (known after apply)
               + http_put_response_hop_limit = (known after apply)
               + http_tokens                 = (known after apply)
              }
        
            + network_interface {
                + delete_on_termination = (known after apply)
                + device_index          = (known after apply)
                + network_interface_id  = (known after apply)
             }
        
           + root_block_device {
                  + delete_on_termination = (known after apply)
                  + device_name           = (known after apply)
                  + encrypted             = (known after apply)
                  + iops                  = (known after apply)
                  + kms_key_id            = (known after apply)
                  + tags                  = (known after apply)
                  + throughput            = (known after apply)
                  + volume_id             = (known after apply)
                  + volume_size           = (known after apply)
                  + volume_type           = (known after apply)
                }
         }
        
         # aws_subnet.my_subnet will be created
         + resource "aws_subnet" "my_subnet" {
            + arn                             = (known after apply)
            + assign_ipv6_address_on_creation = false
            + availability_zone               = "eu-central-1"
            + availability_zone_id            = (known after apply)
            + cidr_block                      = "172.16.10.0/24"
            + id                              = (known after apply)
            + ipv6_cidr_block_association_id  = (known after apply)
            + map_public_ip_on_launch         = false
            + owner_id                        = (known after apply)
            + tags                            = {
               + "Name" = "HW-test"
               }
           + tags_all                        = {
                 + "Name" = "HW-test"
                }
           + vpc_id                          = (known after apply)
          }
           
         # aws_vpc.Netolog-HW will be created
         + resource "aws_vpc" "Netolog-HW" {
            + arn                              = (known after apply)
            + assign_generated_ipv6_cidr_block = false
            + cidr_block                       = "172.16.0.0/16"
            + default_network_acl_id           = (known after apply)
            + default_route_table_id           = (known after apply)
            + default_security_group_id        = (known after apply)
            + dhcp_options_id                  = (known after apply)
            + enable_classiclink               = (known after apply)
            + enable_classiclink_dns_support   = (known after apply)
            + enable_dns_hostnames             = (known after apply)
            + enable_dns_support               = true
            + id                               = (known after apply)
            + instance_tenancy                 = "default"
            + ipv6_association_id              = (known after apply)
            + ipv6_cidr_block                  = (known after apply)
            + main_route_table_id              = (known after apply)
            + owner_id                         = (known after apply)
            + tags                             = {
               + "Name" = "HW-test"
             }
           + tags_all                         = {
               + "Name" = "HW-test"
             }
         }
        
        Plan: 3 to add, 0 to change, 0 to destroy.
        
        Changes to Outputs:
        + AWS_account_ID   = "547659498773"
         + AWS_region       = {
             + description = "Europe (Frankfurt)"
            + endpoint    = "ec2.eu-central-1.amazonaws.com"
            + id          = "eu-central-1"
            + name        = "eu-central-1"
          }
         + AWS_user_ID      = "AIDAX7AYMYUKSOUR3DS5N"
         + Subnet_ID        = (known after apply)
         + instance_ip_addr = (known after apply)
        
        ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
        
        Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if
        you run "terraform apply" now.
        
        c:\Oleg\HW-Terraform>


Ответ на вопрос: при помощи какого инструмента (из разобранных на прошлом занятии) можно создать свой образ ami?

Из презентации: Образы можно описывать при помощи кода, например, используя Packer и Vagrant.


Файлы с исходными конфигурациями терраформа в данном репозитории.
