-- phpMyAdmin SQL Dump
-- version 3.4.10-rc1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2016 年 07 月 01 日 11:40
-- 服务器版本: 5.5.28
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `blogmvc`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_attr`
--

CREATE TABLE IF NOT EXISTS `admin_attr` (
  `id` smallint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `admin_attr`
--

INSERT INTO `admin_attr` (`id`, `name`, `color`) VALUES
(1, '精华', '#f60'),
(2, '置顶', 'red'),
(7, '热门', 'pink'),
(8, '推荐', 'green');

-- --------------------------------------------------------

--
-- 表的结构 `admin_blog`
--

CREATE TABLE IF NOT EXISTS `admin_blog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `time` varchar(10) NOT NULL,
  `cid` int(10) DEFAULT NULL,
  `del` tinyint(1) NOT NULL DEFAULT '0',
  `click` int(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `time` (`time`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- 转存表中的数据 `admin_blog`
--

INSERT INTO `admin_blog` (`id`, `title`, `summary`, `content`, `time`, `cid`, `del`, `click`) VALUES
(59, '我看过的计算机书籍', '计算机导论、计算机网络、计算机操作系统', '&lt;p&gt;计算机导论、计算机网络、计算机操作系统&lt;br/&gt;&lt;/p&gt;', '1467295588', 48, 0, 101),
(60, '自我介绍', '&nbsp;&nbsp;&nbsp; 张一飞，又名张飞，男，河南大学软件学院本科生生，主要学习领域为数据可视化。有2年web前端开发经验。大一期间组建自己工作室主要', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; 张一飞，又名张飞，男，河南大学软件学院本科生生，主要学习领域为数据可视化。有2年web前端开发经验。大一期间组建自己工作室主要做设计方面的，暑假曾在上海互联网金融公司实习；做过的项目有河南大学软件学院官网和河南大学招生网；参与河南省招生办公室地理信息数据可视化信息开发。擅长设计和前端，后端熟悉php能单独开发个人博客项目。业余爱好美食、世界历史、美术，喜欢武术。&lt;/p&gt;', '1467296926', 50, 0, 101),
(61, 'Node.js和Angular.js应用', '一. 一个完整的Nodejs+angularjs的基础架构参考demo:https://github.com/zhangdiwaa/sailsjs-angularjs-bootstrap-examplehttps://github.com/levid/angular-sails-socketio-mongo-demo以上两个dem', '&lt;h2&gt;一. 一个完整的Nodejs+angularjs的基础架构&lt;/h2&gt;&lt;p&gt;参考demo:&lt;/p&gt;&lt;ul class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;https://github.com/zhangdiwaa/sailsjs-angularjs-bootstrap-example&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;https://github.com/levid/angular-sails-socketio-mongo-demo&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;以上两个demo可以结合使用，最终方案包含：&lt;/p&gt;&lt;ol class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;mongoDB：文档型数据库，目前最火最灵活的nosql数据&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;nodejs：服务器程序&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://socket.io/&quot;&gt;Socket.io&lt;/a&gt;：WebSockets类库&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;sailsjs：后端框架&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&lt;a href=&quot;http://passportjs.org/&quot;&gt;Passport&lt;/a&gt;：一个基于nodejs的用户验证组件&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;angularjs：前端全局框架&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;jquery-ui-bootstrap UI类库&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;bootstrap 3 样式框架&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;requirejs： AMD模式JS调用模块&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&amp;nbsp;&lt;a href=&quot;http://jade-lang.com/&quot;&gt;Jade Templates&lt;/a&gt;&amp;nbsp; html简写类库&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;boilerplate html5模版&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;grunt 自动化脚手架&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;&amp;nbsp;D3 SVG可视化类库&lt;/p&gt;&lt;/li&gt;&lt;/ol&gt;&lt;h2&gt;二. IDE：webstorm&lt;/h2&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;img style=&quot;width: 901px; height: 524.218px;&quot; class=&quot;alignnone&quot; alt=&quot;&quot; src=&quot;http://www.jetbrains.com/webstorm/img/angulajs-fullscreen-main-darcula.png&quot; height=&quot;640&quot; width=&quot;1100&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;用了一下号称javascript开发神器的webstorm，看看这货到底有多神。&lt;p&gt;结论是，确实是神器！赶紧不要再等了！立即上webstorm！&lt;/p&gt;&lt;p&gt;好处简单地罗列如下：&lt;/p&gt;&lt;ol class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;神级的代码补全，超多类库支持（包括angularjs）&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;更新非常快，支持业界最新技术，包括nodejs, coffeescript, emmet等等 ，可以自动编译less、coffee等文件&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;史诗级代码重构工具，例如文件重命名时自动更新全部引用，自动把内联的css代码移到外部的CSS文件中去等等，用了就完全停不下来！&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;可以搜索的设置项 and so on&lt;/p&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;….&lt;/p&gt;&lt;p&gt;在知乎上有个讨论，内容是&lt;a href=&quot;http://www.zhihu.com/question/20936155&quot;&gt;“webstorm有何过人之处”&lt;/a&gt;，大家可以参考。&lt;/p&gt;&lt;p&gt;美中不足是这货是收费的，最新版本8.0.3个人版49美刀，有三十天试用期。虽然我知道大多数童鞋都会去搜索&lt;a href=&quot;http://www.baidu.com/s?wd=webstorm+8+%E6%B3%A8%E5%86%8C%E7%A0%81&amp;rsv_spt=1&amp;issp=1&amp;rsv_bp=0&amp;ie=utf-8&amp;tn=baiduhome_pg&amp;rsv_sug3=6&amp;rsv_sug4=104&amp;inputT=4671&amp;rsv_sug1=4&amp;oq=webst&amp;rsv_sug2=0&amp;f=3&amp;rsp=0&amp;rsv_sug=2&quot;&gt;注册码&lt;/a&gt;的。&lt;/p&gt;&lt;h3&gt;三. angularjs的开发人员工具，batarang&lt;/h3&gt;&lt;p&gt;batarang是一个chrome的扩展程序，帮助进行基于angularjs的web开发。安装好了以后，在chrome的F12开发人员工具\r\n中会出现一个angularjs的选项卡，在其中可以详细查看页面中$model对象，查看嵌套关系，作用域，表达式的性能，服务的依赖关系，甚至可以实\r\n时修改并观察反映。总之，用angularjs不可多得的神器。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1467297237', 55, 0, 100),
(62, 'SVG文字交互区域', '在很多情况下，我们使用d3（或者其他SVG类库）创建交互式图表时，都需要将html元素插入到SVG元素上。典型的例子，就是图表中有需要交互\r\n式修改文字', '&lt;p&gt;在很多情况下，我们使用d3（或者其他SVG类库）创建交互式图表时，都需要将html元素插入到SVG元素上。典型的例子，就是图表中有需要交互\r\n式修改文字的地方，当用户点击了某个svg text元素，这里我们需要将一个html元素 \r\ninput“放进”SVG元素中，并在这个input元素上绑定事件，从而快速更改文字。而svg本身元素类型是提供不了类似的功能的，所以用到html\r\n元素是必须的。&lt;/p&gt;&lt;p&gt;SVG元素主要有如下几类：svg(定义svg文档片段), rect(定义矩形), \r\ncircle(定义圆形)，ellipse(定义椭圆)，path(路径)，line(线)，ploygon(多边形)，text(文\r\n字)，title(标题), desc(描述)， g(群组)， defs(参考元素)， \r\nimage(图片元素)。详见：http://www.w3school.com.cn/svg/svg_reference.asp&lt;/p&gt;&lt;p&gt;&lt;strong&gt;但是，直接将html元素插入SVG元素内是不可以显示的。&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;如&lt;a href=&quot;http://stackoverflow.com/questions/11322711/d3js-append-div&quot;&gt;下例&lt;/a&gt;，使用d3js设置text元素是可以显示的，但是如果把插入的元素改为div，则div元素虽然可以创建，但是不可见。&lt;/p&gt;&lt;pre class=&quot;brush:js;toolbar:false&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.attr(&amp;quot;dx&amp;quot;,&amp;nbsp;16)\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.attr(&amp;quot;dy&amp;quot;,&amp;nbsp;&amp;quot;.0em&amp;quot;)\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;.text(function(d)&amp;nbsp;{&amp;nbsp;return&amp;nbsp;d.name&amp;nbsp;});&lt;/pre&gt;&lt;h2&gt;html object in SVG&lt;/h2&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;这是使用SVG绘图时经常遇到的问题。有两个解决办法：&lt;/p&gt;&lt;p&gt;1.将div使用SVG元素foreignObject包裹。&lt;/p&gt;&lt;p&gt;这个办法的好处是，通过foreignObject，可以将div元素嵌入SVG片段来处理。详见：http://ajaxian.com/archives/foreignobject-hey-youve-got-html-in-my-svg.&lt;/p&gt;&lt;p&gt;但是此方法不兼容IE任何版本，详见https://developer.mozilla.org/zh-CN/docs/Web/SVG/Element/foreignObject&lt;/p&gt;&lt;p&gt;2.将div定义为浮动层，然后使用left, top属性,等计算位置。&lt;/p&gt;&lt;p&gt;用这种方法制作文字提示框，就像这样：&lt;/p&gt;&lt;pre class=&quot;brush:js;toolbar:false&quot;&gt;d3.select(&amp;quot;#nytg-tooltip&amp;quot;).style(&amp;#39;top&amp;#39;,ypos+&amp;quot;px&amp;quot;).style(&amp;#39;left&amp;#39;,xpos+&amp;quot;px&amp;quot;).style(&amp;#39;display&amp;#39;,&amp;#39;block&amp;#39;);&lt;/pre&gt;&lt;h2&gt;结论：&lt;/h2&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;对于要进行交互操作的文字区域，通常要借助html元素的力量来实现效果。将html元素加入SVG有两种方法，其一是将div使用SVG元素foreignObject包裹，其二是将div定义为浮动层，然后使用left, top属性,等计算位置。&lt;/p&gt;&lt;p&gt;这里还要特别提到一个案例：在线思维导图软件mindmo也是这样处理文字区域的交互问题的。它将所有的节点文字区域都用浮动的div显示，使用\r\ntop,left属性来控制其位置；而svg只用于路径显示。例如：https://www.mindomo.com/mindmap\r\n/cd8215d5e5b1427c9c22b4abc6aae5d6&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1467297559', 56, 0, 101),
(63, '大学期间素描', '', '&lt;p&gt;&lt;img src=&quot;/blog/upload/image/20160630/1467298745998595.jpg&quot; style=&quot;&quot; title=&quot;1467298745998595.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/blog/upload/image/20160630/1467298746358885.jpg&quot; style=&quot;&quot; title=&quot;1467298746358885.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/blog/upload/image/20160630/1467298747178624.jpg&quot; style=&quot;&quot; title=&quot;1467298747178624.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1467298791', 52, 0, 100),
(64, '河南大学软件学院MV设计稿', '&nbsp;&nbsp; MV栏目整体排版采用黄金分割比例', '&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp; MV栏目整体排版采用黄金分割比例&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/blog/upload/image/20160630/1467298958120643.jpg&quot; style=&quot;&quot; title=&quot;1467298958120643.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/blog/upload/image/20160630/1467298969116366.jpg&quot; style=&quot;&quot; title=&quot;1467298969116366.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1467299078', 52, 0, 101),
(65, '[转]如何每天睡够8小时，还能做一堆事情？', '最近越来越忙，双休日完全没有，依然天天干不完活。但总是有那么一些人，一方面发着上等的论文，一方面dota也是打得不亦乐乎，睡觉也睡的足从来', '&lt;p&gt;最近越来越忙，双休日完全没有，依然天天干不完活。但总是有那么一些人，一方面发着上等的论文，一方面dota也是打得不亦乐乎，睡觉也睡的足从来不黑眼圈，与夜黑着眼圈担忧着deadline的我们形成了鲜明的对比，这是为什么？最近我在知乎上看到了一个问题&lt;a href=&quot;http://www.zhihu.com/question/19678040&quot;&gt;时间管理大家都有什么工具和技巧？&lt;/a&gt;，中间的一篇文字令我感同身受。必须在此转过来与诸君共勉。其中括号里面的红字内容是我的个人感想。&lt;/p&gt;&lt;p&gt;&lt;img class=&quot;alignnone&quot; alt=&quot;&quot; src=&quot;http://i587.photobucket.com/albums/ss314/zhangdiwaa/0024243.jpg&quot; height=&quot;555&quot; width=&quot;750&quot;/&gt;&lt;/p&gt;&lt;p&gt;======================================================================&lt;/p&gt;&lt;p&gt;每天都过的很快，好像起床以后忙活几下，又到了晚上，很快又要睡觉了。To-do-list上的事好像总是做不完，有的时候积压地太多以至于都不想去碰了。每天从早到晚都是忙碌状态，但是总觉得做不了几件事，要是给我1天48小时该多好。&lt;/p&gt;&lt;p&gt;事情太多时间不够，但是睡少了又效率低下，这实在是个悖论。似乎很多牛人都可以睡的很少，每天4-5小时睡眠，或者间歇式的睡眠，就可以高效地做事。这个境界我总是达不到，也没有想去达到。少睡不是长久之计，关键还是要高效地管理时间。&lt;/p&gt;&lt;p&gt;我 \r\n今天和一个朋友请教了这个问题，很受启发。我朋友是卡内基梅陇大学的计算机在读博士，发表了好几篇顶级论文，科研做的很牛。除学术以外，他还忙活不少其他\r\n \r\n的事，他是云飞跃留学平台的兼职编辑，他业余时间喜欢研究摄影，最近又在开发一款手机游戏，他周末也会花不少时间陪女朋友。尽管做那么多事，他告诉我说他&lt;strong&gt;每天都精力充沛，做事效率很高！&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;但是他每天可以&lt;strong&gt;睡8小时&lt;/strong&gt;！&lt;/p&gt;&lt;p&gt;他讲了好几条高效做事的经验：&lt;/p&gt;&lt;p&gt;&lt;strong&gt;1.&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;作息要规律，这是重中之重&lt;/strong&gt;。&lt;/p&gt;&lt;p&gt;他的作息大致是这样的：&lt;/p&gt;&lt;p&gt;6:00 起床和早餐&lt;/p&gt;&lt;p&gt;7:15 – 7:30 跑步到学校&lt;/p&gt;&lt;p&gt;7:30 – 8:15 健身&lt;/p&gt;&lt;p&gt;8:30 – 11:30 做事&lt;/p&gt;&lt;p&gt;11:30 – 13:00 午饭+午睡&lt;/p&gt;&lt;p&gt;13:00 – 18:00 做事&lt;/p&gt;&lt;p&gt;18:00 – 19:30 晚饭&lt;/p&gt;&lt;p&gt;19:30 – 22:30 做事&lt;/p&gt;&lt;p&gt;22:30 睡觉&lt;/p&gt;&lt;p&gt;所以每天约有11小时在做事。他说只有作息规律了，身体机能才能达到最大的发挥。就像生产线一样，只有流程化了，效率才能提高。作息经常不规律，身体就要不断调整，这个调整很消耗能量，影响效率。就像一个GPS，总是在re-calculating，还怎么指路呢？&lt;span style=&quot;color: #ff6600&quot;&gt;（说得太对，我的经验全部都能印证这段话）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;2.&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;不要熬夜，熬夜伤身&lt;/strong&gt;。 \r\n很多人觉得12点，1点睡觉没关系，只要习惯就行了，人的适应能力很好的。但是大量的医学研究表明，长期熬夜会引发很多病，而且这些病一旦爆发，往往后果\r\n \r\n很严重。我知道卡内基梅陇的人很能熬夜，刚来的时候我有几次半夜2点回家，等校车的有不少人。但后来我感觉这边的课程和科研压力很大，一直熬夜下去会一发\r\n 不可收拾，我就强迫自己改变。改变前你要先明白一点：只要睡眠不减少，不管早睡晚睡，每天做事的时间实际是差不多的。&lt;span style=&quot;color: #ff6600&quot;&gt;（亲身经验表示说的太对）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;3.&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;每天要有固定的时间锻炼，至少半小时&lt;/strong&gt;。锻炼可以促进新城代谢，调节身体机能。每天经常锻炼的人，虽然消耗了体力，但是换来的是精神充沛，相反那些不锻炼的人，经常觉得累。&lt;span style=&quot;color: #ff6600&quot;&gt;（说得很对，但是传媒大学现在一个室内场馆都没有，北京雾霾天简直不想出门，果然只能在宿舍打滚了。）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;4.&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;做事之前多想想&lt;/strong&gt;。想明白你为什么做这件事，怎样做可以达到最佳的效果。很多人是拿起事情就做，兵来将挡水来土掩，一股脑的做完了事。这实际上是非常不明智而且低效的做法，因为目的不清晰就会走岔路，做事方法不优化就会浪费时间。有的时候你花5分钟多想想，可以节省你好几个小时。&lt;span style=&quot;color: #ff6600&quot;&gt;（是这样）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;5.&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;做事不要拖&lt;/strong&gt;。很多人喜欢拖，事情就不断积累下来了，然后被一个又一个的deadline折磨。重要的事情一定要在合适的时间尽快处理掉。一件事如果比较耗时，要做好规划，每天做一点。&lt;span style=&quot;color: #ff6600&quot;&gt;（本人现在拖延症已经晚期了…）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;6.&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;每天要做的事尽量写下来，不要只是放在脑中&lt;/strong&gt;。&lt;span style=&quot;color: #ff6600&quot;&gt;（说的好！我已经做到了）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;7.&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;做事要专注&lt;/strong&gt;。 \r\n很多人做事的时候，开着renren、Facebook、weibo、QQ和其他网页，不时会去看看有什么新情况。你以为它们只会占居你很少的时间，其实\r\n \r\n这些时间碎片严重影响了你的效率。就像睡觉一样，你如果被断断续续的声音影响，你就没法进入深度睡眠。所以，做重要的事情的时候，把这些务必都关了，邮件\r\n 也尽量定期去查看，免得经常被新来的邮件打断。&lt;span style=&quot;color: #ff6600&quot;&gt;（说的太好了！对我而言沉浸到论文中至少\r\n10分钟，沉浸到代码编写中至少5分钟，沉浸到画画中至少2分钟，要是反反复复被打断那效率必须很低。果然干活得QQ全关垃圾网页全关手机调成震动搞起\r\n呀。通信工作定时来做比较好，比如早上办公前先查看邮件，晚上回宿舍聊微信，等等。）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;8.&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;控制好做事的节奏，张弛有度&lt;/strong&gt;。从早到晚做事不可能保持一样的效率，如果你早上精神好，那就在早上尽量做重要的事，下午和晚上做一些相对轻松的事。在1小时内做事，也要把握节奏，可以高强度地做50分钟，然后低强度的做10分钟或者休息。道理大家都懂，但很多人一忙起来就不能自拔了。&lt;span style=&quot;color: #ff6600&quot;&gt;（非常适合所有的博士。这段看似与做事要专注有点矛盾，其实不然。我干活干到兴起喜欢在屋子里面走来走去，其实是一种调节，坐了那么久该起来运动运动了。&amp;gt;_&amp;lt;）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;我再根据自己的经验补充2条吧：&lt;/p&gt;&lt;p&gt;&lt;strong&gt;9.&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;如果你喜欢multi-task，尽量减少task之间频繁切换，并且每个task的时间要控制好。&lt;/strong&gt;我一般一小时内就做一个task，如果1小时到了，我通常就会换下一个（如果没有deadline限制）。长时间做一个task往往会效率低下。&lt;span style=&quot;color: #ff6600&quot;&gt;（我的经验也完全印证了这句话。但我个人的工作如写论文、写代码都需要大段时间投入，一般3-4个小时为一段来切换。）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;10.&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;知道什么事你能做，什么事你不能做。&lt;/strong&gt;我们经常想做很多事，但是精力有限，能力有限，使得我们必须做出选择。有些事你如果做不好就尽量不要去接受去承诺。选择是一种智慧，有所放弃才能保证你的睡眠~&lt;span style=&quot;color: #ff6600&quot;&gt;（这个其实是最重要的，但人性贪婪，很多时候都是实在抗不了了才选择放弃。）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1467299683', 53, 0, 101),
(66, '我正在看的书', '', '&lt;p&gt;&lt;a href=&quot;https://book.douban.com/subject/10831897/&quot; title=&quot;数据之魅\r\n\r\nData Analysis with Open Source Tools&quot; target=&quot;_blank&quot;&gt;&lt;img style=&quot;float: left;&quot; src=&quot;https://img1.doubanio.com/mpic/s11109758.jpg&quot; border=&quot;0&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;table cellpadding=&quot;4&quot; cellspacing=&quot;0&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td style=&quot;&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td style=&quot;word-break: break-all;&quot;&gt;&lt;/td&gt;&lt;td style=&quot;&quot;&gt;&lt;a href=&quot;https://book.douban.com/subject/26248487/&quot; title=&quot;UI设计黄金法则\r\n\r\nDigital Design Essentials: 100 Ways to Design Better Desktop, Web, and Mobile Interfaces&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;https://img3.doubanio.com/mpic/s27767211.jpg&quot; border=&quot;0&quot;/&gt;&lt;/a&gt;&lt;/td&gt;&lt;td style=&quot;&quot;&gt;&lt;a href=&quot;https://book.douban.com/subject/25716088/&quot; title=&quot;界面设计模式\r\n\r\nDesigning Interfaces: Patterns for Effective Interaction Design&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;https://img3.doubanio.com/mpic/s27979205.jpg&quot; border=&quot;0&quot;/&gt;&lt;/a&gt;&lt;/td&gt;&lt;td style=&quot;&quot;&gt;&lt;a href=&quot;https://book.douban.com/subject/25665238/&quot; title=&quot;视觉繁美\r\n\r\nVisual Complexity: Mapping Patterns of Information&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;https://img3.doubanio.com/mpic/s28388620.jpg&quot; border=&quot;0&quot;/&gt;&lt;/a&gt;&lt;/td&gt;&lt;td style=&quot;&quot;&gt;&lt;a href=&quot;https://book.douban.com/subject/10427877/&quot; title=&quot;信息可视化\r\n\r\nInformation Visualization: Design for Interaction, Second Edition&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;https://img3.doubanio.com/mpic/s7037304.jpg&quot; border=&quot;0&quot;/&gt;&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1467299777', 54, 1, 101),
(67, '我想看的书', '', '&lt;p&gt;&lt;a href=&quot;https://book.douban.com/subject/25772440/&quot; title=&quot;机器学习基础教程\r\n\r\n&quot; target=&quot;_blank&quot;&gt;&lt;img style=&quot;float: left;&quot; src=&quot;https://img1.doubanio.com/mpic/s27141379.jpg&quot; border=&quot;0&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;table cellpadding=&quot;4&quot; cellspacing=&quot;0&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td style=&quot;&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td style=&quot;&quot;&gt;&lt;a href=&quot;https://book.douban.com/subject/25833225/&quot; title=&quot;数据之美\r\n\r\nData Points: Visualization That Means Something&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;https://img1.doubanio.com/mpic/s27280759.jpg&quot; border=&quot;0&quot;/&gt;&lt;/a&gt;&lt;/td&gt;&lt;td style=&quot;&quot;&gt;&lt;a href=&quot;https://book.douban.com/subject/20382244/&quot; title=&quot;R语言实战\r\n\r\nR in Action&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;https://img3.doubanio.com/mpic/s24576400.jpg&quot; border=&quot;0&quot;/&gt;&lt;/a&gt;&lt;/td&gt;&lt;td style=&quot;&quot;&gt;&lt;a href=&quot;https://book.douban.com/subject/24744195/&quot; title=&quot;信息可视化设计\r\n\r\nInfographics &amp;amp; data visualizations&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;https://img3.doubanio.com/mpic/s27081151.jpg&quot; border=&quot;0&quot;/&gt;&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1467299824', 53, 1, 101),
(68, '前端代码与禅', '用前言数字技术管理龙泉寺里的一切事物;③禅悟与编程。在“前端代码之禅”中参悟“穿越技术人生,探索终极价值。龙泉寺写程序的ＩＴ精英们　　龙', '&lt;p&gt;用前言数字技术管理龙泉寺里的一切事物;③禅悟与编程。在“&lt;em&gt;前端代码之禅&lt;/em&gt;”中参悟“穿越技术人生,探索终极价值。&lt;/p&gt;&lt;p&gt;&lt;strong&gt;龙泉寺写程序的ＩＴ精英们&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　&lt;strong&gt;龙泉寺，有极客&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　2011年11月，一年一度的中国移动开发者大会，贤信的一身僧衣和淡然寂静的表情吸引了其他参会者的视线。从此，中国玩互联网最顶尖的这批人知道了：龙泉寺，有极客。&lt;br/&gt; &amp;nbsp; &amp;nbsp;&lt;br/&gt;　　有次和IT圈资深人士、车库咖啡创始人苏菂聊天，他谈到自己对龙泉寺僧人的印象，“他们都是工程师出家，是高才生写代码”。他的评价让我决心尽快探访龙泉寺。&lt;/p&gt;&lt;p&gt;　\r\n　据网上资料，龙泉寺的僧人带领一帮IT义工，搭建了专业的信息平台，自己编写代码，用数字技术管理寺里的日常生活及与外界的联系等一切事宜。有人用一段\r\n声情并茂的长句来描述他们的活动：“真正Coder的生活是这样子的：龙泉寺的贤信法师，精通Linux和Mongodb，龙泉寺信息技术组除了开发软\r\n件，还有周末例会、集中开发、IT培训、有机农场劳动、栗子园采摘、登山远足等活动。”&lt;/p&gt;&lt;p&gt;　　龙泉寺信息技术组在新浪有微博，他们对自己的描述是：“穿越技术人生，探索终极价值。”某次组内活动后，信息小组的PPT被贴到了网上，其中一篇演讲的题目令人印象深刻，叫做“前端代码之禅”&lt;/p&gt;&lt;p&gt;　\r\n　当我气喘吁吁爬上凤凰岭，在客堂登记，最终见到龙泉寺的学诚方丈时，几位法师上来倒茶，他们看上去都非常年轻，而且温文尔雅。学诚法师坐在上首，他是这\r\n群青年僧人的指引者，有点像是这个集体的“研究生导师”。听过我的来访理由，学诚法师微笑起来，很快提出建议：先去用午斋，然后参观龙泉寺，下午可以访问\r\n负责信息项目的法师。&lt;/p&gt;&lt;p&gt;　　这一天，有近百位僧人和近两百位常住居士在寺里用饭。我享受了一碗南瓜、半份土豆、一勺饭、小水果一个、紫菜汤一碗，馒头及加菜推却。饭桌很长，但四众皆静。&lt;/p&gt;&lt;p&gt;　　&lt;strong&gt;贤才和贤信&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　优美的唱诵过后，午斋结束，我见到了贤才法师。他是龙泉寺图书馆首任馆长，负责照管寺内35000多册书籍。&lt;/p&gt;&lt;p&gt;　\r\n　贤才法师和他的助手们采取了一套相当靠谱的编目管理流程，对文献资料进行分类，编制目录，建立馆藏目录体系。这一流程被分成15个步骤，包括“记到”\r\n（对到馆图书进行信息核对及登记）、“查重”（对馆藏已有书目的筛选工作，通常保留3本）、给分类号、贴登录号、编MARK数据（即书目数据，含书名、作\r\n者、分类、简介、索书号等）。图书上架之后，寺内的法师可以前来借阅，他们拥有自己的电子借阅卡。&lt;/p&gt;&lt;p&gt;　　生于1984年的贤才法师毕业于大连理工大学，现在更像一位专业的图书馆工作人员。2012年7月，国家图书馆的工作人员来龙泉寺访问，贤才法师负责接待，双方讨论了“慧海佛教百科”数据库的使用和改进。&lt;/p&gt;&lt;p&gt;　　数据库卷帙浩繁，共有7个子数据库，包括佛塔、藏经、期刊目录查询。光是“佛教经录——中国汉传佛教历代经籍目录通检”就涉及19种历代古经录全文，收入经录图像1750张，录通检记录23940条经，共计850万字，堪称当代的数码藏经阁。&lt;/p&gt;&lt;p&gt;　　贤信法师比贤才法师年长些，个子高高，身材瘦削，走路和说话的时候凝神而专注。&lt;/p&gt;&lt;p&gt;　　“我是北工大计算机专业的，毕业后做过几年程序员。”“后来不是很喜欢这个专业了，因为变化太快，心脏受不了。”&lt;/p&gt;&lt;p&gt;　　2009年初，他正式出家，法号贤信。在问起出家的缘由，贤信法师不肯多言，只大略地说是“因缘所致”。&lt;/p&gt;&lt;p&gt;　\r\n　因缘巧合，出家之后，贤信再度捡起了信息技术。他注意到，客堂每天都要处理挂单和床位的各项事务，但EXCEL只被当成记事本来用，没有发挥出自动计算\r\n和归类的功能。他便想：“如果有一个数据库，信息准确，管理有条理，那该多好啊。”到2010年春节，贤信法师一个人开发完成了龙泉寺的“挂单系统”。&lt;/p&gt;&lt;p&gt;　\r\n　为了一些不太懂的技术，贤信着急过。被学诚法师知道了，说他这是“向外用心”：事情没做，已经预设了很多问题。这句话之于贤信，犹如暮鼓晨钟，他开始考\r\n虑如何安坐于“不安”之上：“以前我总想着有一个彻底的解决办法，在这个前提下去落实和推进，但是实际上不存在这种完美的状态，我要学着慢慢去解决。”&lt;/p&gt;&lt;p&gt;　　&lt;strong&gt;更多程序员的加入&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;　　2011年夏天，贤信法师有了新的追求：把师父的开示、文章和寺内各种文档管理起来，做成一个系统的数据库。这件事工作量比较大，以他一人的力量很难完成。这个情况放在“世间法”来看，就是他有一个项目诉求，自己就是产品经理，需要招聘人马，组建团队，完成项目。&lt;/p&gt;&lt;p&gt;　　“佛门做事和世间不一样”，贤信法师笑眯眯地说，“我们不能招聘，因为都是无偿的。要是人家对佛教没有一定兴趣，也不可能跟着你做这个事。”&lt;/p&gt;&lt;p&gt;　　找人一度很难，从5月15日到7月19日，一个人都找不到，组建团队似乎毫无希望。但是到了7月下旬，就在那一两个星期，忽然来了一批人。一直到现在，信息技术组里比较核心的人，都是那个阶段来的。&lt;/p&gt;&lt;p&gt;　　据项目组成员张静回忆，他一直在龙泉寺做义工，看到信息技术小组有这样一个项目，就发心去参与，后来又介绍了自己的朋友黄涛加入。&lt;/p&gt;&lt;p&gt;　　“挺不可思议的”，贤信法师说。到2012年2月29日学诚法师出家30周年的时候，龙泉寺文档数据库正式交付使用。&lt;/p&gt;&lt;p&gt;　　“你比一般的产品经理运气要好。”&lt;/p&gt;&lt;p&gt;　　“在论坛上发布信息起了作用，当然，主要是因为佛菩萨的加持。”贤信法师虔诚地说。虽然忙于数据库的工作，但他仍然是一个精进的佛教僧人。作为僧侣，贤信法师这样安排自己的一天：&lt;/p&gt;&lt;p&gt;　\r\n　早晨4点，上早殿，用早斋，打扫卫生，出坡（即一些体力劳动，如参与寺院建设、搬图书馆的大书架、抬竹子等），读两个小时书（最近在学戒律）。10点到\r\n11点上一节课。午斋后有午休时间，然后拜忏。下午处理一些项目组的事情，从2点工作到5点。晚上，是信息技术方面的学习（最近在读一本有关Linux的\r\n书）。&lt;/p&gt;&lt;p&gt;　　对于手头在做的工作，贤信法师的发心很明确，就是要为龙泉寺制作一个完整的佛教的信息与交流平台。在这样的前提下，所有努力都具备了和以往截然不同的意义，每一点工作都朝着“成佛”的人生宗旨前行，这对他鼓励很大。&lt;/p&gt;&lt;p&gt;　　“建立了人生的宗旨之后，对信息技术的态度也与从前不同了。”他这样说道。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1467300037', 61, 0, 101);

-- --------------------------------------------------------

--
-- 表的结构 `admin_blog_attr`
--

CREATE TABLE IF NOT EXISTS `admin_blog_attr` (
  `bid` int(10) unsigned NOT NULL,
  `aid` int(10) unsigned NOT NULL,
  KEY `bid` (`bid`,`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_blog_attr`
--

INSERT INTO `admin_blog_attr` (`bid`, `aid`) VALUES
(3, 1),
(3, 2),
(3, 7),
(4, 1),
(4, 2),
(4, 7),
(10, 2),
(11, 8),
(12, 1),
(14, 1),
(14, 2),
(14, 7),
(14, 8),
(18, 7),
(21, 1),
(21, 2),
(21, 7),
(21, 8),
(23, 8),
(25, 1),
(34, 1),
(38, 1),
(39, 1),
(57, 1),
(57, 2),
(57, 7),
(57, 8),
(58, 1),
(58, 2),
(58, 7),
(58, 8),
(59, 1),
(59, 8),
(60, 2),
(60, 8),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(68, 2);

-- --------------------------------------------------------

--
-- 表的结构 `admin_category`
--

CREATE TABLE IF NOT EXISTS `admin_category` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `pid` smallint(2) NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- 转存表中的数据 `admin_category`
--

INSERT INTO `admin_category` (`id`, `name`, `pid`, `sort`) VALUES
(25, '励志文章', 20, 3),
(26, '励志故事', 20, 2),
(27, '励志名言', 20, 1),
(28, '励志演讲', 20, 4),
(29, '名人经典语录', 24, 1),
(30, '经典爱情语录', 24, 2),
(31, '伤感的句子', 24, 3),
(41, 'H5', 33, 100),
(42, 'JQ', 34, 100),
(43, 'AJAX', 34, 100),
(45, '数组', 35, 100),
(46, '禅意', 37, 100),
(47, '网页设计', 39, 100),
(48, 'IT', 38, 100),
(50, '个人简介', 0, 1),
(51, '我的工作', 0, 3),
(52, '设计与绘画', 0, 2),
(53, '生活点滴', 0, 4),
(54, '读书频道', 0, 5),
(55, '项目展示', 51, 100),
(56, '前端技术', 51, 100),
(57, '后端技术', 51, 100),
(58, '数据可视化画', 51, 100),
(59, '程序员的自我修养', 53, 100),
(60, '团队建设', 53, 100),
(61, '前端代码与禅', 0, 6);

-- --------------------------------------------------------

--
-- 表的结构 `admin_links`
--

CREATE TABLE IF NOT EXISTS `admin_links` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(100) NOT NULL,
  `about` varchar(200) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `admin_links`
--

INSERT INTO `admin_links` (`id`, `name`, `url`, `about`, `remarks`) VALUES
(2, '斯坦福大学可视化实验室', 'http://vision.stanford.edu/index.html', '斯坦福可视化实验室', '斯坦福可视化实验室'),
(3, '机器学习', 'http://freemind.pluskid.org/', '机器学习', '机器学习'),
(4, 'UEmo设计网站', 'http://uehtml.uemo.net/', '很不错的设计网站', '很不错的设计网站');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `id` smallint(3) unsigned NOT NULL COMMENT '//id',
  `name` varchar(60) NOT NULL,
  `password` varchar(64) NOT NULL,
  `time` datetime NOT NULL,
  `ip` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_user`
--

INSERT INTO `admin_user` (`id`, `name`, `password`, `time`, `ip`) VALUES
(1, 'zyf', 'zyf123', '2016-06-07 00:00:00', '127.0.0.1'),
(2, 'admin1', '123', '2016-06-01 00:00:00', ' 127.0.0.1'),
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00', '127.0.0.1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
