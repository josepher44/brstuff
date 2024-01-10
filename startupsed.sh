cd ..
cd btcrecover
sed -i '30i\from pushnotif import PushNotif' btcrecover.py
sed -i '45i\		handler = PushNotif(key = "lhcYkA0QFkqxdxnf7w88_", event = "btmatch")' btcrecover.py
sed -i '46i\		handler.send(password_found)' btcrecover.py
cd btcrecover
sed -i '8950i\                print("Progress update 8959")' btcrpass.py
sed -i '8951i\                if args.performance:' btcrpass.py
sed -i '8952i\                    logoutput = "Computed P/s = "+str(progress.currval/progress.seconds_elapsed)+" P/s"' btcrpass.py
sed -i '8953i\                    append_to_performancelog(logoutput)' btcrpass.py
sed -i '8820i\                append_to_performancelog(devicestring)' btcrpass.py
sed -i '8821i\                ws_string = "global-ws = " + str(args.global_ws[0]) + " | local-ws = " + str(args.local_ws[0])' btcrpass.py
sed -i '8822i\                append_to_performancelog(ws_string)' btcrpass.py
sed -i '8819i\                devicestring = "Found Device: "+pyopencl.device_type.to_string(dev.type)+ " | " + dev.name.strip()' btcrpass.py
sed -i '8816i\            append_to_performancelog(devicestring)' btcrpass.py
sed -i '8817i\            ws_string = "global-ws = " + str(args.global_ws[0]) + " | local-ws = " + str(args.local_ws[0])' btcrpass.py
sed -i '8818i\            append_to_performancelog(ws_string)' btcrpass.py
sed -i '8815i\            devicestring = "Device List: " + pyopencl.device_type.to_string(cl_devices[0].type) + " | " + cl_devices[0].name.strip()' btcrpass.py
sed -i '6579i\                    append_to_performancelog("--local-ws of " + str(args.local_ws[i]) + " out of bounds for graphics card, absolute failure. Max is "+str(devices[i].max_work_group_size))' btcrpass.py
sed -i '649i\                append_to_performancelog("--local-ws of "+ str(local_ws[i])+ " out of bounds for graphics card, wallet failure. Max is "+str(max_local_ws) )' btcrpass.py
sed -i '126i\def append_to_performancelog(message):' btcrpass.py
sed -i '127i\    file_path = os.path.join(os.path.dirname(__file__), "..", "performancelog.txt")' btcrpass.py
sed -i '128i\    with open(file_path, "a") as file:' btcrpass.py
sed -i '129i\        file.write(message + "\\n")' btcrpass.py
cd ..
touch performancelog.txt
