# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: elpira <elpira@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/06/01 11:25:11 by elpira            #+#    #+#              #
#    Updated: 2024/06/01 16:54:09 by elpira           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	@if [ ! -d "/home/$(USER)/data" ]; then \
		sudo mkdir /home/$(USER)/data; \
	fi
	@if [ ! -d "/home/$(USER)/data/database" ]; then \
		sudo mkdir /home/$(USER)/data/database; \
	fi
	@if [ ! -d "/home/$(USER)/data/web" ]; then \
		sudo mkdir /home/$(USER)/data/web; \
	fi
	@cd srcs && docker compose up --build -d

stop:
	@docker stop $$(docker ps -q)

clean:
	@echo "containers has been removed."
	@cd srcs && docker compose down -v

fclean: clean
	@echo "erase all...."
	@sudo rm -rf /home/$(USER)/data
	@docker system prune

re: fclean all

.PHONY: build all stop re clean fclean
