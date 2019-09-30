# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dbolilyi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/16 16:42:45 by dbolilyi          #+#    #+#              #
#    Updated: 2018/09/23 13:17:55 by dbolilyi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = doom-nukem

SRC =	3d/minimap.c \
		3d/input_validation.c \
		3d/inside_sector.c \
		3d/set_get_pixels.c \
		3d/add_delete_picture.c \
		3d/add_delete_picture2.c \
		3d/draw_hud.c \
		3d/draw_hud2.c \
		3d/draw_hud3.c \
		3d/draw_hud4.c \
		3d/get_by_pointer.c \
		3d/sector_animations.c \
		3d/wall_animations.c \
		3d/wall_animations2.c \
		3d/hud_game.c \
		3d/hud_game2.c \
		3d/backpack.c \
		3d/backpack2.c \
		3d/backpack3.c \
		3d/checkpoints.c \
		3d/using_cards.c \
		3d/button_f_up.c \
		3d/key_up_hook.c \
		3d/key_down_hook.c \
		3d/mouse_move_right_wheel.c \
		3d/mouse_left_up.c \
		3d/mouse_left_up2.c \
		3d/mouse_left_up3.c \
		3d/mouse_left_up4.c \
		3d/player_moving.c \
		3d/player_moving2.c \
		editor/save.c \
		editor/save1.c \
		editor/save2.c \
		editor/save3.c \
		editor/save4.c \
		editor/save5.c \
		editor/load_animation.c \
		editor/load_connect.c \
		editor/load_game.c \
		editor/load_map_sec.c \
		editor/load_map_tex.c \
		editor/load_map.c \
		3d/check_collisions.c \
		3d/do_animations.c \
		3d/do_animations2.c \
		3d/enemies_main_functions.c \
		3d/enemies_main_functions2.c \
		3d/enemies_main_functions3.c \
		3d/enemy_intelligence0.c \
		3d/enemy_intelligence1.c \
		3d/enemy_intelligence2.c \
		3d/enemy_intelligence2_2.c \
		3d/guns_mechanic.c \
		3d/guns_mechanic2.c \
		3d/loop.c \
		3d/loop2.c \
		3d/main_loops.c \
		3d/main_loops2.c \
		3d/read_from_files.c \
		3d/read_from_files2.c \
		3d/bresenham_save.c \
		3d/checkpoints_game.c \
		3d/draw.c \
		3d/draw_between_sectors_bot_tex.c \
		3d/draw_between_sectors_top_tex.c \
		3d/draw_floor_ceil.c \
		3d/draw_floor_ceil2.c \
		3d/draw_get_between_sectors_walls.c \
		3d/draw_get_between_sectors_walls2.c \
		3d/draw_glass.c \
		3d/draw_gun.c \
		3d/draw_inclined_floor_ceil.c \
		3d/draw_inclined_floor_ceil2.c \
		3d/draw_inclined_wall_floor_ceil.c \
		3d/draw_inclined_wall_floor_ceil2.c \
		3d/draw_left_right.c \
		3d/draw_pictures.c \
		3d/draw_skybox.c \
		3d/draw_sprites.c \
		3d/draw_subfunctions.c \
		3d/draw_wall_floor_ceil.c \
		3d/draw_wall_floor_ceil2.c \
		3d/free_ways_exit_x.c \
		3d/ft_funcs.c \
		3d/get_floor_ceil_z.c \
		3d/get_kernel_mem.c \
		3d/get_left_right_visible_walls.c \
		3d/get_left_right_visible_walls2.c \
		3d/get_packaging_tex_from_sur.c \
		3d/get_sector_ways.c \
		3d/get_sector_ways2.c \
		3d/get_start_draw_vectors_lines.c \
		3d/get_visible_walls.c \
		3d/map_wall_equations.c \
		3d/next_sector.c \
		3d/next_sector2.c \
		3d/set_defaults.c \
		3d/set_defaults_guns.c \
		3d/set_defaults_sprites.c \
		3d/sound_loops.c \
		3d/sprites_calculation.c \
		3d/sprites_calculation2.c \
		3d/undo_animations.c \
		3d/update_window.c \
		3d/wall_pairs_sort.c \
		3d/draw_floor_ceil_betw_kernel.c \
		3d/draw_glass_kernel.c \
		3d/draw_gun_kernel.c \
		3d/draw_inclined_floor_ceil_betw_kernel.c \
		3d/draw_inclined_floor_ceil_betw_kernel2.c \
		3d/draw_inclined_wall_floor_ceil_kernel.c \
		3d/draw_inclined_wall_floor_ceil_kernel2.c \
		3d/draw_pictures_kernel.c \
		3d/draw_skybox_kernel.c \
		3d/draw_sprites_kernel.c \
		3d/draw_wall_floor_ceil_kernel.c \
		3d/setup_opencl.c \
		3d/setup_opencl2.c \
		editor/main.c \
		editor/save_list.c \
		editor/display.c \
		editor/draw_pixels.c \
		editor/draw_line.c \
		editor/map_redactor.c \
		editor/save_new_list.c \
		editor/write_list.c \
		editor/find_walls.c \
		editor/sector_in_sector.c \
		editor/delete.c \
		editor/sort_sector.c \
		editor/sprite.c \
		editor/delete_memory.c \
		editor/portal.c \
		editor/player.c \
		editor/sector.c \
		editor/check_option.c \
		editor/walls.c \
		editor/sprite_two.c \
		editor/find_allsector.c \
		editor/info_display.c \
		editor/button.c  \
		editor/button_move.c \
		editor/init_sdl.c \
		editor/mouse_button.c \
		editor/get_map.c  \
		editor/edit.c \
		editor/unget.c \
		editor/new_game.c \
		editor/chech_new_load.c \
		editor/game_mode.c \
		editor/move_scan.c \
		editor/delete2.c \
		editor/write_list2.c

OBJ = $(SRC:.c=.o)

INC =	-I./frameworks/SDL2.framework/Headers\
		-I./frameworks/SDL2_ttf.framework/Headers\
		-I./frameworks/SDL2_mixer.framework/Versions/A/Headers

ERRFL = -Wall -Wextra -g # -Werror

FL = -F./frameworks \
	-rpath ./frameworks \
	-framework SDL2 -framework SDL2_ttf -framework SDL2_mixer -framework OpenCL

all: $(NAME)

$(OBJ): %.o: %.c
	@echo "\033[93mCompiling \033[0m$@"
	@cc $(ERRFL) -c -o $@ $< $(INC)

$(NAME): $(OBJ)
	@echo "\033[93mCompiling libft\033[0m"
	@make -C ./libft
	@echo "\033[93mCompiling $(NAME)\033[0m"
	@gcc $(ERRFL) $(FL) -o $@ $(OBJ) -L libft/ ./libft/libft.a 
	@echo "\033[92mDONE\033[0m"
	

clean:
	@echo "\033[91mDeleting libft objects\033[0m"
	@make -C libft/ clean
	@echo "\033[91mDeleting $(NAME) objects\033[0m"
	@rm -f $(OBJ)

fclean: clean
	@echo "\033[91mDeleting libft.a\033[0m"
	@make -C libft/ fclean
	@echo "\033[91mDeleting $(NAME)\033[0m"
	@rm -f $(NAME)

re: fclean \
	all

.PHONY: all clean fclean re

.NOTPARALLEL: all clean fclean re
