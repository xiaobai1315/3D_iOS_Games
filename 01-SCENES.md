##Getting started
当你从零开始创建一个Scene Kit场景，你可能会添加一些组件来增强你的项目。Scene Kit把这些组件组织成一个以节点为基础的层级系统中，也就是 场景图。一个场景由一个定义了坐标系统的根节点为开始，在根节点下添加内容节点，形成了一个树形结构；游戏中的所有元素(灯光、相机、几何图形等)都称为节点，存储在树形结构中；

###SCNNODE
节点是三维空间中相对他的父节点的一个位置；节点在渲染在scene上时，本身没有可见的内容，是不可见的。