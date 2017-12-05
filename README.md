------------------------
Python Tensorflow and Matplotlib on Centos 7
For Development of Neural Network
------------------------
## Run the container
```docker
docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
-v /root/.Xauthority:/root/.Xauthority:rw \
-v /root/neural-network:/root/neural-network \
--net=host --name neuron sanjose/tf-matplotlib bash
```
Where "/root/neural-network" is the directory your development scripts locate

## Test the container
```python
python /root/neural-network/simple_neural_network.py
```
You will expect 4 images displayed on screen and the classification on the console

Prerequisites:
 - graphical interface should be available on the Operating System
 - X11 should be enabled


Good luck !!


## Reference:
[Tensorflow Examples](https://github.com/aymericdamien/TensorFlow-Examples/)

