
window.onload = function() {
        var kacker = document.getElementById("hacker");
        var width = hacker.width = screen.width;
        var height = kacker.height;
        var ctx = hacker.getContext('2d');
        var num = Math.ceil(width / 10);
        var y = Array(num).join(0).split('');
        var draw = function() {
            ctx.fillStyle = 'rgba(0,0,0,.05)';
            ctx.fillRect(0, 0, width, height);
            ctx.fillStyle = '#0f0';
            ctx.font = '10px Microsoft YaHei';
            for(i = 0; i < num; i++) {
                var x = (i * 10) + 10;
                text = String.fromCharCode(65 + Math.random() * 62);
                //console.log(text);  用来检测 text 的值
                var y1 = y[i];
                ctx.fillText(text, x, y1);
                if(y1 > Math.random() * 10 * height) {
                    y[i] = 0;
                } else {
                    y[i] = parseInt(y[i]) + 10;
                }
            }
        }
        Run();
        function Run() {
            Game_Interval = setInterval(draw, 100);
        }
    }

