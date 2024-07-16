from moviepy.editor import ImageSequenceClip

str1 = "video_images/"
str2_list = ["bear", "car", "car_turn", "cat_flower", "dog_walking", "fox", "rabbit_strawberry", "rabbit_watermelon", "squirrel_carrot", "swan"]
for str2 in str2_list:
    image_files = []
    for i in range(1, 9):
        image_files.append(str1 + str2 + '/' + str(i) + '.jpg')
    print(image_files)
    clip = ImageSequenceClip(image_files, fps=4)
    clip.write_videofile(str2 + '.mp4', codec='libx264')
