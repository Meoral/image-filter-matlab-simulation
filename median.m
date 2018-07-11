% 滤波部分
for i = 1+k : m+k
    for j = 1+k : n+k
        sub_image = image2(i-k:i+k, j-k:j+k);
        temp = median(sub_image(:));
        image_out(i-k, j-k) = uint8(temp);
    end
end
