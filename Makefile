# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hait-hsa <hait-hsa@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/31 14:21:31 by hait-hsa            #+#    #+#              #
#    Updated: 2024/05/31 14:21:31 by hait-hsa           ###   ########.fr        #
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
	@cd srcs && docker compose up --build

clean:
	@echo "containers has been removed."
	@cd srcs && docker compose down

fclean: clean
	@echo "erase all...."
	@sudo rm -rf /home/$(USER)/data
	@docker volume rm -f srcs_database  srcs_web
	@docker  system  prune -af

re: fclean all

.PHONY: build all re clean fclean
