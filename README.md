# id-diler_infra

## 4. Практика управления ресурсамиyandex cloud через YC.

testapp_IP = 84.201.156.194

testapp_port = 9292



## 3. Запуск VM в Yandex Cloud, управление правилами фаервола, настройка SSH подключения, настройка SSH подключения через Bastion Host, настройка VPN сервера и VPN-подключения.

### Самостоятельное задание
> ssh -i ~/.ssh/yc-otus-appuser -A yc-otus-appuser@62.84.119.155 -t ssh 10.128.0.16

bastion_IP = 62.84.119.155

someinternalhost_IP = 10.128.0.16

### Дополнительное задание
> в "~/.ssh/config" прописываем
> > Host connect-to-yc-otus
> >
> > Hostname 10.128.0.16
> >
> > User yc-otus-appuser
> >
> > IdentityFile /Users/dlr/.ssh/yc-otus-appuser
> >
> > ForwardAgent yes
> >
> > ProxyCommand ssh -W %h:%p yc-otus-appuser@62.84.119.155
>
>
> и после можем соединяться из консоли
> > ssh connect-to-yc-otus
