// file Client.hx
class Client {
    static function main() {
        var s = new sys.net.Socket();
        s.connect(new sys.net.Host("192.168.178.28"),5000);
        while( true ) {
            var l = s.input.readLine();
            trace(l);
            if( l == "exit" ) {
                s.close();
                break;
            }
        }
    }
}