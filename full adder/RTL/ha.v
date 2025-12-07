module ha_b(a,b,cin,cout,sum);
input a,b, cin;
output cout, sum;

if (a==b==cin==0)begin
    assign sum=0;
    assign carry=0;
    end
else if (a^b^cin==1 & {a,b,c}!=0) begin
    assign sum=1;
    assign carry=0;
    end
else if (a^b^cin==0 & {a,b,cin}!=1)begin
    assign sum=0;
    assign carry=1;
    end
    else (a==b==cin==1)
    begin 
       assign sum=1;
       assign carry=1;
       end
endmodule
