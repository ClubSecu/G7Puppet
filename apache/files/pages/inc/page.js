var c=document.getElementById("c");
var ctx=c.getContext("2d");
c.height = window.innerHeight;
c.width = window.innerWidth;
ctx.font="20px Georgia";
ctx.fillStyle = "#0F0"; //green text
ctx.textAlign="center"; 
ctx.fillText("コナミコードのページへようこそ。これまでに来て本当にありがとうございました。楽しみます！",c.width/2,c.height/2);
ctx.textAlign="center"; 
ctx.fillText("Enter the code to enter the Matrix",c.width/2 ,c.height/2 + 50);