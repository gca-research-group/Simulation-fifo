
ds=dataset('xlsfile','DataSet.xlsx');

myFit1=LinearModel.stepwise(ds,'constant');disp(myFit1);

disp(myFit2)

myFit2=LinearModel.stepwise(ds,'interactions');

disp(myFit2)

myFit3=LinearModel.stepwise(ds,'quadratic','Upper','quadratic');

disp(myFit3)

Rrange1 = [min(myFit1.Residuals.Raw),max(myFit1.Residuals.Raw)];
Rrange2 = [min(myFit2.Residuals.Raw),max(myFit2.Residuals.Raw)];
Rrange3 = [min(myFit3.Residuals.Raw),max(myFit3.Residuals.Raw)];
Rranges = [Rrange1;Rrange2;Rrange3]

plot(myFit3)
