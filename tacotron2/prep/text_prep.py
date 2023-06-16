#%% 
import os

file_path = '/home/changhyeon/code/tacotron2_v2/test_data/kss/transcript.txt'

with open(file_path, 'r') as f:
    lines = f.readlines()

print(len(lines))
print(lines)

# %%
text_list = lines
address = '/home/changhyeon/code/tacotron2_v2/test_data/kss/'

for k in range(len(text_list)):
    flag = 0
    first = 0
    second = 0
    for i, l in enumerate(text_list[k]):
        if l == '|':
            flag += 1
            if flag == 1:
                first = i
            if flag == 2:
                second = i
            if flag == 3:
                text_list[k] =  address+text_list[k][:first] + text_list[k][second:i]

print(len(text_list))
# %%
print(text_list[33])
# print(text_list)

# address = '/home/changhyeon/code/tacotron2_v2/test_data/kss/'

# print(text_list[0])

# xx = text_list[0] 

# yy = address + xx
# print(yy)

# %%
import pickle

save_path = '/home/changhyeon/code/tacotron2_v2/test_data/kss/prep_transcript_edit.txt'
# with open(save_path, 'wb') as f:
#     pickle.dump(text_list, f)

with open(save_path, 'w+') as file:
    file.write('\n'.join(text_list))
# %%
