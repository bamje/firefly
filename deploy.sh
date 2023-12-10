age -d -i $AGE_KEY env.tar.age > env.tar
if tar -tf test.tar &> /dev/null == 0 then
    tar xfv tar.env
fi

docker compose up -d