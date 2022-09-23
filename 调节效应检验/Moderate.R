data=read.csv("自我效能感2.csv",header=T,na.strings=c("NA"))#读取数据
data
标准化自我效能感总得分=scale(data$自我效能感总得分)#数据标准化，Z分数
标准化考试焦虑总得分=scale(data$考试焦虑总得分)
标准化成绩=scale(data$成绩)
model1=lm(标准化成绩~标准化考试焦虑总得分+标准化考试焦虑总得分)
model2=lm(标准化成绩~标准化考试焦虑总得分+标准化自我效能感总得分+标准化考试焦虑总得分*标准化自我效能感总得分)
summary(model1)
summary(model2)

