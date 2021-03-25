import {Body, Controller, Get, Post} from '@nestjs/common';
import {UsersService} from "./users.service";
import {User} from "./user.entity";

@Controller('users')
export class UsersController {
    constructor(
        private usersService: UsersService,
    ) {}

    @Get()
    async findAll(): Promise<User[]> {
        return await this.usersService.findAll();
    }

    @Post()
    async findOne(@Body('id') id: string): Promise<User> {
        return await this.usersService.findOne(id);
    }
}
