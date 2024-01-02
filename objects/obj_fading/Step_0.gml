var f = 1;
if (alpha > f)
{
    fadein = 1;
}
if (fadein == 1 && alpha < 0)
    instance_destroy();
if (fadein == 0)
    alpha += 0.1;
else if (fadein == 1)
    alpha -= 0.1;