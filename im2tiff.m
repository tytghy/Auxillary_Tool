function im2tiff(img,filename)
%IM2TIFF Exports tif stack.
%   IM2TIFF(img, filename) exports tif stack from a 3D image array. 
%   The filename should be ended with ".tif".

for i = 1:size(img,3)
    im = img(:,:,i);
    if i == 1
        imwrite(im,filename);
    else
        imwrite(im,filename,'WriteMode','append','Compression','packbits');
    end
    DispBar(i,size(img,3));
end
