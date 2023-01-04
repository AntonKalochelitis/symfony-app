<p align="center">
    <h1 align="center">Symfony 5.4 with deployment automation</h1>
    <br>
</p>

For start project need run: 
```
# cp ./.env ./.env.local
```
If you need, change APP_ENV=prod to APP_ENV=dev
```
# sudo make
```

For ssh to frontend
```
sudo make ssh
```

For stop project need run:
```
# sudo make stop
```

For remove all container need run:
```
# sudo make rm
```