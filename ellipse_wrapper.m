function h = ellipse_wrapper(invec1,invec2,CONF)

        covar = cov(invec1, invec2);
        mu = [mean(invec1) mean(invec2)];
        h = error_ellipse(covar,mu,'conf',CONF);
