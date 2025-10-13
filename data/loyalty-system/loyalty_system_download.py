# %%
import shutil

import kaggle 

api = kaggle.KaggleApi()
api.authenticate()

api.dataset_download_file(
    dataset = "teocalvo/teomewhy-loyalty-system", 
    file_name = "database.db"
)

shutil.move("database.db", "c:/TeoMeWhy/Projeto de Dados/loyalty-predict-main/data/loyalty-system/database.db")