switch(irandom(4))
{
    case 1:
    {
        instance_create(x,y,objRightArrow);
        break;
    }
    case 2:
    {
        instance_create(x,y,objLeftArrow);
        break;
    }
    case 3:
    {
        instance_create(x,y,objUpArrow);
        break;
    }
    case 4:
    {
        instance_create(x,y,objDownArrow);
        break;
    }
}
