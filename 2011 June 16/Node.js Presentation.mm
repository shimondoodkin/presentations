<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1306157140433" ID="ID_1" MODIFIED="1306248899199" STYLE="fork" TEXT="Today&apos;s Node.js Presentration">
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1306157140433" ID="ID_2" MODIFIED="1306248898931" POSITION="right" TEXT="Basic Use">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1306178597275" ID="ID_145834437" MODIFIED="1306277158533" TEXT="getting help">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="button_ok"/>
<node COLOR="#990000" CREATED="1306178618139" ID="ID_879482466" MODIFIED="1306248898931" TEXT="nodejs reference">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306178609617" ID="ID_183033580" MODIFIED="1306248898931" TEXT="irc chat">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306179892567" ID="ID_1443280558" MODIFIED="1306274458542" TEXT="what else">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1306179859909" ID="ID_1633445401" MODIFIED="1306248898931" TEXT="node js mailing list - good place to anounce things and get responses"/>
<node COLOR="#111111" CREATED="1306179812489" ID="ID_879516771" MODIFIED="1306248898931" TEXT="search in google"/>
<node COLOR="#111111" CREATED="1306179759920" ID="ID_1260193337" MODIFIED="1306248898931" TEXT="read source code it is in lib folder."/>
</node>
</node>
<node COLOR="#00b439" CREATED="1306157140433" ID="ID_9" MODIFIED="1306248898931" TEXT="modules">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1306157140433" ID="ID_14" MODIFIED="1306248898931" TEXT="in a module you have:require, this, exports,module.exports">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1306179288362" ID="ID_510358417" MODIFIED="1306248898931" TEXT="exports example:&#xa;&#xa;exports.obamaLikes=function( name){&#xa; return &quot;with grate owner i like &quot;+name;&#xa;}"/>
<node COLOR="#111111" CREATED="1306179304760" ID="ID_794941717" MODIFIED="1306248898943" TEXT="module.exports example:&#xa;&#xa;// this module returns a function object&#xa;function createMyObject(name)&#xa;{&#xa; this.name=name;&#xa; return this;&#xa;}&#xa;module.exports=createMyObject;&#xa;"/>
<node COLOR="#111111" CREATED="1306179353603" ID="ID_704551103" MODIFIED="1306248898959" TEXT="there was a request to not use &quot;this&quot; instead use exports function"/>
<node COLOR="#111111" CREATED="1306180394525" ID="ID_260532924" MODIFIED="1306249139361" TEXT="technical note:">
<arrowlink DESTINATION="ID_260532924" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1132834057" STARTARROW="None" STARTINCLINATION="0;0;"/>
<node COLOR="#111111" CREATED="1306248924256" ID="ID_1822660201" MODIFIED="1306249596551" TEXT="suggest to type: console.log(module) ; console.log(proccess)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1306181988956" ID="ID_1191843473" MODIFIED="1306181992969" TEXT="// if you look inside node-0.4.7/lib/module.js:&#xa;&#xa;//yoou see module loading is very similar to:&#xa;Module._load=function(filename) {&#xa;    Module._compile(Module._resolveFilename(filename)); &#xa;}&#xa;function _compile(filename) {&#xa;...&#xa;  function require(path) {&#xa;    return Module._load(path, self);&#xa;  }&#xa;  require.resolve = Module._resolveFilename;&#xa;  require.paths = Module._paths;&#xa;  require.main = process.mainModule;&#xa;  require.cache = Module._cache;&#xa;&#xa;  var sandbox = {};&#xa;                              var self = this;&#xa;  sandbox.exports = self.exports;&#xa;  sandbox.module = self;&#xa;  sandbox.__filename = filename;&#xa;  sandbox.__dirname = dirname;&#xa;  sandbox.require = require;&#xa;  sandbox.global = sandbox;&#xa;&#xa;  for (var k in global) {&#xa;      sandbox[k] = global[k];&#xa;  }&#xa;... &#xa; // do javascript eval:&#xa; return runInNewContext( fileContent, sandbox, debugFilename, true); &#xa;}"/>
</node>
</node>
<node COLOR="#990000" CREATED="1306157164951" ID="ID_49469112" MODIFIED="1306248898971" TEXT="module usage:&#xa;    var result_obj=require(&apos;./local_file.js&apos;);&#xa;or:&#xa;    var result_obj=require(&apos;module_folder_name&apos;);  // it will search for  module_folder_name/index.js&#xa;&#xa;default search folders: &#xa;local :  ./node_modules // relative to file&apos;s path and to app&apos;s path&#xa;global: /usr/local/lib/node/[module]/index.js">
<arrowlink DESTINATION="ID_49469112" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_890789871" STARTARROW="None" STARTINCLINATION="0;0;"/>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1306157140433" ID="ID_12" MODIFIED="1306277142594" TEXT="server">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<icon BUILTIN="attach"/>
<node COLOR="#990000" CREATED="1306182420830" ID="ID_1011288150" MODIFIED="1306184758141" TEXT="nodejs can run scripts and can create servers:, tcp, udp, and many other servers, they are all evented simple. ie: server.on &apos;connect&apos; event ... not while select loop">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306182136419" ID="ID_1022682907" MODIFIED="1306184758140" TEXT="explore dummy http server">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1306182154158" ID="ID_806496233" MODIFIED="1306184758140" TEXT="reqest">
<node COLOR="#111111" CREATED="1306182180583" ID="ID_552949176" MODIFIED="1306184758140" TEXT="uri"/>
<node COLOR="#111111" CREATED="1306182218325" ID="ID_164323891" MODIFIED="1306184758140" TEXT="method"/>
<node COLOR="#111111" CREATED="1306182333084" ID="ID_547805968" MODIFIED="1306184758140" TEXT="querystring"/>
</node>
<node COLOR="#111111" CREATED="1306182165963" ID="ID_975187975" MODIFIED="1306184758140" TEXT="response">
<node COLOR="#111111" CREATED="1306182189859" ID="ID_1554599907" MODIFIED="1306184758140" TEXT="writeHeaders()"/>
<node COLOR="#111111" CREATED="1306182202461" ID="ID_636301652" MODIFIED="1306184758140" TEXT="write"/>
<node COLOR="#111111" CREATED="1306182206398" ID="ID_678385717" MODIFIED="1306184758139" TEXT="end"/>
</node>
<node COLOR="#111111" CREATED="1306182249840" ID="ID_783877311" MODIFIED="1306184758139" TEXT="can we build something simple?">
<node COLOR="#111111" CREATED="1306182299405" ID="ID_284338061" MODIFIED="1306184758139" TEXT="print uri"/>
<node COLOR="#111111" CREATED="1306182307497" ID="ID_884212092" MODIFIED="1306184758139" TEXT="read file"/>
<node COLOR="#111111" CREATED="1306182348722" ID="ID_1881831327" MODIFIED="1306184758139" TEXT="use require"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1306157140433" ID="ID_13" MODIFIED="1306248899023" TEXT="npm">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1306162536774" ID="ID_1311719382" MODIFIED="1306248899023" TEXT="intro npm is a simple node npm/cli.js execution. it puts a link in bin folder usualy ~user/bin">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306162498525" ID="ID_224675331" MODIFIED="1306248899023" TEXT="install a module">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1306162644687" ID="ID_1496887547" MODIFIED="1306248899023" TEXT="npm install -g tool_module_name"/>
<node COLOR="#111111" CREATED="1306162661360" ID="ID_1585525036" MODIFIED="1306248899023" TEXT="npm install module_name"/>
</node>
<node COLOR="#990000" CREATED="1306162758824" ID="ID_288803899" MODIFIED="1306248899023" TEXT="npm init">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306162726624" ID="ID_1579354211" MODIFIED="1306248899023" TEXT="npm adduser">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306162750269" ID="ID_852948392" MODIFIED="1306248899024" TEXT="npm publish">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1306183272355" ID="ID_379075008" MODIFIED="1306248899024" POSITION="right" TEXT="highlevel">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1306183283821" ID="ID_863484015" MODIFIED="1306248899024" TEXT="now js example">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306183297540" ID="ID_1995494714" MODIFIED="1306248899024" TEXT="connect plate example">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306183471807" ID="ID_1330961675" MODIFIED="1306248899024" TEXT="express plate example">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1306157140433" ID="ID_3" MODIFIED="1306248899024" POSITION="right" TEXT="system installation">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1306162903298" ID="ID_218788356" MODIFIED="1306248899024" TEXT="haproxy">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306178108130" ID="ID_180874262" MODIFIED="1306248899024" TEXT="nginx - cant websockets">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306178113501" ID="ID_852109686" MODIFIED="1306248899031" TEXT="stunnel - ssl port 80 to 443">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306178120731" ID="ID_1130512412" MODIFIED="1306248899031" TEXT="monit">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306178164485" ID="ID_1267283390" MODIFIED="1306248899031" TEXT="nodejs versioning - very importent:  nave, nvm, i like nave">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306178186189" ID="ID_109054305" MODIFIED="1306248899031" TEXT="node runtime like cluster or spark monit">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306183093963" ID="ID_1705563344" MODIFIED="1306248899031" TEXT="upstart">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306183106725" ID="ID_44009284" MODIFIED="1306248899031" TEXT="use bash file to start your app">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306183417950" ID="ID_906073866" MODIFIED="1306248899031" TEXT="dev reloader">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1306157140433" ID="ID_4" MODIFIED="1306248899031" POSITION="right" TEXT="why awsome">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1306182636078" ID="ID_1381529571" MODIFIED="1306248899031" TEXT="why bad?">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1306182643460" ID="ID_1440753971" MODIFIED="1306248899031" TEXT="you have to configure manualy simple staff  you already have built-in in many http file servers">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306182676726" ID="ID_786630177" MODIFIED="1306248899031" TEXT="not self realoads">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306182717841" ID="ID_370638853" MODIFIED="1306248899032" TEXT="no large standard library like in php - you have to do a lot of choices. and require libraries you like">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306183381121" ID="ID_1727564073" MODIFIED="1306248899068" TEXT="a lot of callbacks in async code">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306184660845" ID="ID_1456679257" MODIFIED="1306248899068" TEXT="its a new language with javascript syntax and interoperability, actualy by itself javascript is an empty language just a set of operators and and names and until you introduce some functionality">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306184388630" ID="ID_508285291" MODIFIED="1306248899095" TEXT="what is missing">
<edge STYLE="sharp_bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1306184506750" ID="ID_925021371" MODIFIED="1306248899095" TEXT="in  javascript there is no built in">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1306184543354" ID="ID_321042276" MODIFIED="1306248899095" TEXT="array.shuffle">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1306184547021" ID="ID_1249649150" MODIFIED="1306248899095" TEXT="format date">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1306178318534" ID="ID_850959139" MODIFIED="1306248899095" TEXT="javascript is everywhere, it allows optimize and interact between server side and client side feeling at home">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306178383163" ID="ID_806421141" MODIFIED="1306248899110" TEXT="if you like coding. you enjoy it. because you have an easy control over  everything, and i mean everything">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306182574549" ID="ID_867302729" MODIFIED="1306248899114" TEXT="can be very fast">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306182981414" ID="ID_1355233229" MODIFIED="1306248899114" TEXT="evented">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306182605142" ID="ID_1934681764" MODIFIED="1306248899114" TEXT="very good for realtime">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
<node COLOR="#00b439" CREATED="1306183190844" ID="ID_1203447214" MODIFIED="1306248899114" TEXT="work with dom serverside">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1306184341419" ID="ID_903433847" MODIFIED="1306248899114" TEXT="jsdom + yui or jquery">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1306184909047" ID="ID_852971826" MODIFIED="1306248899114" TEXT="you can build Deamons - programs that always work (vs php) that take  zero cpu">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
</node>
</node>
<node COLOR="#0033ff" CREATED="1306189213098" ID="ID_1523815248" MODIFIED="1306248899114" POSITION="left" TEXT="presentation">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<node COLOR="#00b439" CREATED="1306189226667" ID="ID_857512288" MODIFIED="1306248899114" TEXT="tell a story">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1306189238279" ID="ID_57052773" MODIFIED="1306248899114" TEXT="i started exploring node js">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306189259766" ID="ID_990432056" MODIFIED="1306248899114" TEXT="i was doing projects and we started doing like so and i learned like this">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306189297900" ID="ID_735068385" MODIFIED="1306248899114" TEXT="the situtaion is kind of wired">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1306189368650" ID="ID_248472055" MODIFIED="1306248899114" TEXT="interaction">
<edge STYLE="bezier" WIDTH="thin"/>
<font NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1306189374637" ID="ID_1487531485" MODIFIED="1306248899114" TEXT="i will show an example and tell it">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306189389196" ID="ID_1105910795" MODIFIED="1306248899114" TEXT="dont put many examples on one page so people wong get before you, step one at time. - there is an example .. story,  and there is an example... story">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306189535147" ID="ID_1043509501" MODIFIED="1306248899133" TEXT="i expect alot of questions i will try to answer the best as i can">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306189554626" ID="ID_43408317" MODIFIED="1306248899133" TEXT="i want o thank you  of having me here today">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306189572126" ID="ID_1506911435" MODIFIED="1306248899133" TEXT="how i discovered and got hooked on node js, so">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306189636514" ID="ID_1638744172" MODIFIED="1306248899133" TEXT="today i want to talk about node js. and describe the  audience and around situation">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306189703453" ID="ID_1362173636" MODIFIED="1306248899133" TEXT="i really like nodejs and i will go over some major points that make node js really cool : show examples of nodejs">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306189847805" ID="ID_26901151" MODIFIED="1306248899143" TEXT="just very quick who here has done node js before ,(point with hand up to ask for hand, to know how many) say thats alot , ok&#xa;how many of you done advanced like javascript? haha ok  sure">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306189995916" ID="ID_1510621650" MODIFIED="1306248899196" TEXT="[in this example] is what you have here it is does this thing">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306190165468" ID="ID_914197027" MODIFIED="1306248899197" TEXT="giing gestures with hands, like take an example and give it to the listeners with the hands">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306190381570" ID="ID_931403996" MODIFIED="1306248899197" TEXT="to tell waht the audiance can do">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306190818299" ID="ID_777545716" MODIFIED="1306248899197" TEXT="tell what you are doibg  what it allows you to">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306190891121" ID="ID_1429393529" MODIFIED="1306248899197" TEXT="here are [more examples]">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306190946688" ID="ID_1745114525" MODIFIED="1306248899197" TEXT="tell what is nice [makes tghem think of their opinion]">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1306190912910" ID="ID_1599845190" MODIFIED="1306248899197" TEXT="i think thats it , if you have any question you can come asking more, this my website, thanks for comming">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>
