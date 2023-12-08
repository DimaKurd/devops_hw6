# Devops_hw6
> Домашнее задание 6. Deploy web-приложения в кластер Kubernetes

# Использованная документация
- [Установка Docker на Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

- [Установка minicube](https://minikube.sigs.k8s.io/docs/start/)

- [Push в DockerHub] - 

- [Создание Deployment с ReplicaSet в k8s](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#creating-a-deployment)

- [Liveness probes в k8s deployments](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-a-liveness-command)

# Использованные скрипты
Запуск из соответствующих каталогов!
1. [`./install_docker.sh`](util_installation/install_docker.sh) - скрипт установки докера в Ubuntu

2. [`./install_minicube.sh`](util_installation/install_minicube.sh) - скрипт установки minicube в Ubuntu

3. [`./build_and_run_docker.sh`](docker_dir/build_and_run_docker.sh) - скрипт сборки образа Docker и разворачивания контейнера на порту 8000

4. [`./push_to_dockerhub.sh`](docker_dir/push_to_dockerhub.sh) - скрипт загрузки образа на DockerHub для последующего использования в кластере

5. [`./kubectl_commands.sh`](k8s_dir/kubectl_commands.sh) - скрипт запуска кластера по deployment manifest

# Результаты работы
Доступ к веб-приложению, развёрнутому в кластере:
![image](https://github.com/DimaKurd/devops_hw6/assets/43163420/714ee7f9-c00f-4631-846d-5f0702711d24)
![image](https://github.com/DimaKurd/devops_hw6/assets/43163420/b154841c-34d9-4ed3-b54a-777633f179a7)

Шаги отражены в соответствующих скриптах раздела "Использованные скрипты"

Файлы настроек и вывод комманд:
1. [Dockerfile](docker_dir/Dockerfile)
2. [web-deployment.yaml](k8s_dir/web-deployment.yaml)
3. [Результат команды “kubectl describe deployment web”](k8s_dir/describe_deployment_output.yaml)
