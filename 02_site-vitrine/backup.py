from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive

gauth = GoogleAuth()
drive = GoogleDrive(gauth)

upload_file_list = ['wordpress.sql.tar.gz']
for upload_file in upload_file_list:
        gfile = drive.CreateFile({'parents': [{'id': '1QbK8cVIKGXLMQ63Ivkg_QW_MEu8XA8qs'}], 'id': '1wHrriapwnxqaocmH67Wu9KSdbDHqJ5hc'})
        # Read file and set it as the content of this instance.
        gfile.SetContentFile(upload_file)
        gfile.Upload() # Upload the file.
#       print('title: %s, id: %s' % (gfile['title'], gfile['id']))