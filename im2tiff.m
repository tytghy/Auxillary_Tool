function im2tiff(img,filename)

for i = 1:size(img,3)
    im = img(:,:,i);
    if i == 1
        imwrite(im,filename);
    else
        imwrite(im,filename,'WriteMode','append','Compression','packbits');
    end
    DispBar(i,size(img,3));
end
