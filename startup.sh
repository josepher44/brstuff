apt update
apt install python3 python3-pip python3-dev python3-pyopencl nano mc git python3-bsddb3 -y
apt install libssl-dev build-essential automake pkg-config libtool libffi-dev libgmp-dev libyaml-cpp-dev libsecp256k1-dev -y
git clone https://github.com/3rdIteration/btcrecover.git
pip3 install -r ~/btcrecover/requirements-full.txt
pip3 install pushnotif
update-locale LANG=C.UTF-8
echo "set -g terminal-overrides \"xterm*:kLFT5=\eOD:kRIT5=\eOC:kUP5=\eOA:kDN5=\eOB:smkx@:rmkx@\"" > ~/.tmux.conf
cd btcrecover
sed -i '30i\from pushnotif import PushNotif' btcrecover.py
sed -i '45i\		handler = PushNotif(key = "lhcYkA0QFkqxdxnf7w88_", event = "btmatch")' btcrecover.py
sed -i '46i\		handler.send(password_found)' btcrecover.py
cd btcrecover
sed -i '8954i\                print("Progress update 8959")' btcrpass.py
sed -i '8955i\                if args.performance:' btcrpass.py
sed -i '8956i\                    logoutput = "Computed P/s = "+str(progress.currval/progress.seconds_elapsed)+" P/s" btcrpass.py
sed -i '8957i\                    append_to_performancelog(logoutput)' btcrpass.py
sed -i '8824i\                append_to_performancelog(devicestring)' btcrpass.py
sed -i '8825i\                ws_string = "global-ws = " + str(args.global_ws[0]) + " | local-ws = " + str(args.local_ws[0])' btcrpass.py
sed -i '8826i\                append_to_performancelog(ws_string)' btcrpass.py
sed -i '8823i\                devicestring = "Found Device: "+pyopencl.device_type.to_string(dev.type)+ " | " + dev.name.strip()' btcrpass.py
sed -i '8820i\            append_to_performancelog(devicestring)' btcrpass.py
sed -i '8821i\            ws_string = "global-ws = " + str(args.global_ws[0]) + " | local-ws = " + str(args.local_ws[0])' btcrpass.py
sed -i '8822i\            append_to_performancelog(ws_string)' btcrpass.py
sed -i '6574i\                    append_to_performancelog("--local-ws of " + str(args.local_ws[i]) + " out of bounds for graphics card, absolute failure. Max is "+str(devices[i].max_work_group_size))' btcrpass.py
sed -i '649i\                append_to_performancelog("--local-ws of "+ str(local_ws[i])+ " out of bounds for graphics card, wallet failure. Max is "+str(max_local_ws) )' btcrpass.py
sed -i '126i\def append_to_performancelog(message):' btcrpass.py
sed -i '127i\    file_path = os.path.join(os.path.dirname(__file__), "..", "performancelog.txt")' btcrpass.py
sed -i '128i\    with open(file_path, "a") as file:' btcrpass.py
sed -i '129i\        file.write(message + "\\n")' btcrpass.py
