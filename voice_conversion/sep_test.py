#%%
import numpy as np
PATH = '/home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018_preprocessed/TEST_DATA/CH_TOTAL_edit'
FILE_NAME = '/CH_TOTAL_edit_norm_stat.npz'

xx = np.load(PATH + FILE_NAME)
# %%
print(xx)
# %%
for i in xx['std']:
    print(i)

# %%
import pickle
with open("/home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018_preprocessed/TEST_DATA/CH_TOTAL_edit/CH_TOTAL_edit_normalized.pickle","rb") as fr:
    data = pickle.load(fr)
# %%
print(data)
# %%


two_path = '/home/changhyeon/code/VoiceConversion/MaskCycleGAN-VC/vcc2018_preprocessed/asdasd/CH_TOTAL_edit/CH_TOTAL_edit_normalized.pickle'

import pickle
with open(two_path, "rb") as fr:
    data2 = pickle.load(fr)
# %%
print(data2)
# %%

print(len(data))
print(len(data2))
print(data[1] == data2[1])

# print((data == data2).all())
# %%
