"use client";

import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { Badge } from "@/components/ui/badge";
import { Checkbox } from "@/components/ui/checkbox";
import { UserIcon } from "lucide-react";
import type { ColumnDef } from "@tanstack/react-table";
import { CrewTableRowActions } from "./crew-table-row-actions";
import type { Crew } from "@/lib/db/schema";

export function useCrewColumns<TData>() {
	const columns: ColumnDef<Crew>[] = [
		{
			id: "select",
			header: ({ table }) => (
				<Checkbox
					checked={table.getIsAllPageRowsSelected()}
					onCheckedChange={(value) => table.toggleAllPageRowsSelected(!!value)}
					aria-label="Select all"
					className="translate-y-[2px]"
				/>
			),
			cell: ({ row }) => (
				<Checkbox
					checked={row.getIsSelected()}
					onCheckedChange={(value) => row.toggleSelected(!!value)}
					aria-label="Select row"
					className="translate-y-[2px]"
				/>
			),
			enableSorting: false,
			enableHiding: false,
		},
		{
			accessorKey: "member",
			header: "Name",
			filterFn: (row, id, value) => {
				const member = row.getValue("member");

				const name = member?.user?.name || row.original.name;
				const email = member?.user?.email || row.original.email;

				const searchValue = (value as string).toLowerCase();
				return (
					name?.toLowerCase().includes(searchValue) ||
					email?.toLowerCase().includes(searchValue) ||
					false
				);
			},
			cell: ({ row }) => {
				const member = row.getValue("member");
				const name = member?.user?.name || row.original.name;
				const email = member?.user?.email || row.original.email;
				const image = member?.user?.image;

				return (
					<div className="flex items-center gap-3">
						<Avatar className="h-9 w-9">
							<AvatarImage src={image || undefined} />
							<AvatarFallback>
								<UserIcon className="h-5 w-5" />
							</AvatarFallback>
						</Avatar>
						<div>
							<div className="font-medium">{name}</div>
							{email && (
								<div className="text-sm text-muted-foreground">{email}</div>
							)}
						</div>
					</div>
				);
			},
		},
		{
			accessorKey: "role",
			header: "Role",
			cell: ({ row }) => {
				const role = row.getValue("role") as string;
				return role ? <div className="font-medium">{role}</div> : "—";
			},
		},
		{
			accessorKey: "specialization",
			header: "Specialization",
			cell: ({ row }) => {
				const specialization = row.getValue("specialization") as string;
				return specialization ? (
					<div className="font-medium">{specialization}</div>
				) : (
					"—"
				);
			},
		},
		{
			accessorKey: "status",
			header: "Status",
			cell: ({ row }) => {
				const status = row.getValue("status") as string;
				return (
					<Badge
						variant={
							status === "available"
								? "default"
								: status === "unavailable"
									? "destructive"
									: "secondary"
						}
					>
						{status}
					</Badge>
				);
			},
		},
		{
			id: "actions",
			cell: ({ row }) => <CrewTableRowActions row={row} />,
		},
	];

	return columns;
}
