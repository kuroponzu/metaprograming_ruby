def math(a,b)
    yield(a,b)
end

# 引数にprocを入れたいときは&をつけてあげる
def do_math(a,b, &operation)
    math(a,b,&operation)
end

do_math(2,3) {|x,y| x*y}
