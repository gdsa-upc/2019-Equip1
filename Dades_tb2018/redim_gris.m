clc;
clear;
Original_image_dir= 'X:\3r\GDSA\session2\tb2018\test\images';   % path original
right_image_dir ='X:\3r\GDSA\session2\test\test';               % path destino 

fpath = fullfile(Original_image_dir, '*.jpg');

im_dir = dir(fpath);
im_num = length(im_dir);

for i = 1:im_num
    IMname = regexp(im_dir(i).name, '\.', 'split');
    IMname = IMname{1};
    im=imread(fullfile(Original_image_dir, im_dir(i).name));
    S=imresize(im,[28,28]); % redimensional
    S_gray=rgb2gray(S);     % convertir a escala gris
    image_name3=strcat(right_image_dir,num2str(i),'.jpg');
    imwrite(S_gray,image_name3,'jpg');
end