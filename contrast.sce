Image = imread('C:\Users\Labx51\Desktop\bhavneet\b3.jpg')
subplot(3,1,1)
imshow(Image)
title('Originial Image');
grayimg=rgb2gray(Image)
subplot(3,1,2)
imshow(grayimg)
title('GrayScale Image');
doublegray=double(grayimg)
[row,col]=size(doublegray)
LowerThresh=40
UpperThresh=100
for x=1:1:row
    for y=1:1:col
        if doublegray(x,y)<=LowerThresh
            c(x,y)=0.5*doublegray(x,y)
        else if doublegray(x,y)<=UpperThresh
                c(x,y)= 0.5*(doublegray(x,y)-UpperThresh+0.5*LowerThresh) 
        else c(x,y)=0.5*(doublegray(x,y)-UpperThresh)+0.5*LowerThresh+2*(UpperThresh-LowerThresh)
        end
    end    
end
end
subplot(3,1,3)
imshow(uint8(c))
title('Contrasted Image');
