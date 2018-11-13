rosinit
``````````
while(1)
    turtle = rossubscriber('/turtle1/pose');
    msg = receive(turtle);
    x = msg.X
    y = msg.Y
    plot(x,y,'*');
    xlim([0 20])
    ylim([0 20])
end
