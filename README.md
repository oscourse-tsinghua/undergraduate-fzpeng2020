# undergraduate-fzpeng2020
这个链接上有更详细的日志记录 http://os.cs.tsinghua.edu.cn/research/undergraduate/fzpeng2020
由于git有时上传下载比较慢，一些毕设文件(.doc, .pdf等)放到了wiki上，如有需要请自行查阅下载，需要注意的是学校是**不允许跨专业**选题的，如果并非是计算机学院的学生，请提前在本系内联系好导师。
## wishbone_soc
这个仓库目前是包含了一个wishbone总线的SOC，可以使用片上的ram，rom与uart，led。请注意，由于资源占用率很高，我重写的UART十分简陋，且只包含发送功能(但是消耗逻辑资源也很少)，**且只支持115200波特率**，使用Quartus 18.1 lite 直接打开综合即可。
