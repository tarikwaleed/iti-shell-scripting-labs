#!/usr/bin/awk 

#############################  SED ################################

# Problem 1
# sed -n '/lp/p' /etc/passwd
 
# Problem 2
# sed '3d' /etc/passwd

# Problem 3 
# sed '$d' /etc/passwd

# Problem 4
# sed '/lp/d' /etc/passwd 

# Problem 5
# sed 's/lp/mylp/g' /etc/passwd


#############################  AWK ################################
#Problem1

# {
#     print

# }

# Problem 2
# BEGIN	{
#     FS=":";
    
# }
# {
#     print NR,$1,$5,$6;
# }

# Problem 3
# BEGIN	{
#     FS=":";
    
# }
# {
#     if($3>500){
#     print NR,$1,$5,$6;

#     }
# }


# Problem 4
# BEGIN	{
#     FS=":";
    
# }
# {
#     if($3==500){
#     print NR,$1,$5,$6;

#     }
# }

# Problem 5
# {
#     if(NR>=5 && NR<=15){
#         print NR,$0;
#     }
# }

#Problem 6
# {
#     gsub(/lp/,"mylp");
#     print;

# }

#Problem 7
BEGIN	{
    FS=":";
    max=0;
    line="";
}
{
    if($3>max){
        max=$3;
        line=$0;
    }



}
END	{
    print line;
}

