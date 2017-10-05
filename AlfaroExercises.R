# Alfaro1 done
for(ii in 1:9)
{
  cat("\n")
  if(ii==9)
  {
    cat("*")
  }
}

#Alfaro2 done
for(ii in 1:9)
{
  cat("*&")
  if(ii==9)
    cat("*")
}

#Alfaro3 done
#dog: iter1: 10,11; iter2: 11,12; iter3:12,13; iter4: 13,14; iter5: 14,15
#meatloaf: iter1: 0,-4; iter2: -4,-9; iter3: -9,-15; iter4: -15, -22; iter5: -22, -30
#bubbles iter1: 12, -1; iter2: -1, -2; iter3: -2, -3; iter4: -3,-4

#Alfaro4 done
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years))
  {
  if(years[ii] %% 2 == 0)
    {
      cat(years[ii], 'Hooray, congressional elections!', sep = '\t')
      if (years[ii]%%4==0)
        {
          cat(years[ii], 'Horray, presidential elections!', sep = '\t')
      }
    cat("\n")
    }

}
#Alfaro5 done
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
interestRate <- 0.0125;
compounded <- rep(0,7)
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

#alfaro6 done
bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of
income <- c(21, 21, 21); #add this

for (j in 1:5) {

    bankAccounts=bankAccounts-house-food-fun+income
    #step 1 modify bankAccounts so that amounts reflect income and expenses
    bankAccounts=bankAccounts*(1+interestRate)
    #step 2 get calculate interest and add to accounts from step 1
    #you can actually use the line you have already written if you
    #modify amounts in bankAccounts directly in step 1
  }

#alfaro7 done
bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;
house <- c(4.8, 3.8, 5.7);
food<- c(3.5, 4.3, 5.0);
fun <- c(7.8, 2.1, 10.5);
#and incomes (through TAships) of
income <- c(21, 21, 21);
for (j in 2015:2020)
  {
    bankAccounts=bankAccounts-house-food-fun+income
    #step 1 modify bankAccounts so that amounts reflect income and expenses
    if(j%%2 ==1)
    {
      bankAccounts[1]<-bankAccounts[1]+5
      bankAccounts[3]<-bankAccounts[3]+5
    }

    bankAccounts=bankAccounts*(1+interestRate)

}
#alfaro8 done
i<-1
sum<-0
while(i<=17)
  {
  sum<-sum+i
  i<-i+1
  }
print(sum)

#alfaro9 done
numsize<-function(number)
{
  if(number<=-1)
  {
    print('small')
  }
  else
  {
    if(number<1)
      print('medium')
    else
      print('large')
    }
}
numsize(-5)
numsize(0)
numsize(10)
