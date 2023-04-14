#NPV formula in r. With vectors and with else if,

#our inputs
I <- 100
CF <- c(30,40,50) #vectors
r <- 0.01  

#our NPV formula
NPV = -I + CF[1]/(1+r)^1 + CF[2] /(1+r)^2 + CF[3] /(1+r)^3

#if else statement
if (NPV > 50){
  print(c("NPV of the project is", NPV, "It will make us rich."))
}else if(NPV > 0 & NPV < 50){
  print(c("NPV of the project is", NPV,"We will accept this project."))
}else {
  print(c("NPV of the project is", NPV, "We cannot accept this."))
}

#using mean as a prediction of our next cash flow

CF4 = mean(CF)
CF4

#adding our new cash flow to other vectors

newCF <- c(CF,CF4)
newCF

#Calculating new NPV of the project

NPVnew = NPV + newCF[4]/(1+r)^4
NPVnew

#adding fifth element in a one line

NPVfinal = NPVnew + mean(newCF)/(1+r)^5
NPVfinal
