# VMworld Demo App

This is the repository used for the Demo App in the VMworld 2021 talk: Cloud-Native Fundamentals: Containers and Kubernetes 101 for the VI Admin [MCL1257]

The talk consists of two parts:

* Building the Container
* Running the container in a Kubernetes environment

## The App

This is a very simple static HTML side showing the VMworld content and some additional links with more information around the topics. The site is based on [HTML5 UP](https://html5up.net/). If you would like to learn more about containers follow these links:

* [Containers 101](https://kube.academy/courses/containers-101)
* [Building Applications for Kubernetes](https://kube.academy/courses/building-applications-for-kubernetes)
* [Building Images](https://kube.academy/courses/building-images)

### Build the App

We use the docker daemon to build the container and run it afterwards.

```bash
docker build . -t your-docker-hub-account/vmworld:1.0
```

### Use the App

We run the container localy and exposite to the local port ```5000```:

```bash
docker run -d -p 5000:80 --rm --name vmworld your-docker-hub-account/vmworld:1.0
```

If you just want to test it without building it. We got you covered as well: 

```bash
docker run -d -p 5000:80 --rm --name vmworld ghcr.io/devulrix/vmworld:1.0
```

## Deployment

We're using a simple deployment file to start the application in our Kubernetes cluster. For more advanced techniques like helm or carvel please have a look at the following content:

* [Helm 101](https://kube.academy/courses/helm-101)
* [Carvel on the Tanzu Developer Portal](https://tanzu.vmware.com/developer/guides/kubernetes/carvel/)

### Run the App

## Credit

Here are the sources for the HTML and images used in the app: 

* [HTML5 UP](https://html5up.net/)
* Photo by [Cameron Venti](https://unsplash.com/@ventiviews?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/container?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)
* Photo by [ThisisEngineering RAEng](https://unsplash.com/@thisisengineering?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/code-female?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)
* Photo by [AbsolutVision](https://unsplash.com/@freegraphictoday?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/s/photos/post-it?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)